# -*- coding: utf-8 -*-
"""TVBox 配置解码：移植安卓端 ApiConfig.FindResult() + AES.java 的三种编码。

格式1  图片伪装 + [A-Za-z0]{8}** 标记 + base64 JSON      (ApiConfig.java:113-139)
格式2  AES-CBC 自解密：hex 串，$#key#$ 开头，末13字符为iv  (AES.java:44-55 CBC())
格式3  AES-ECB 外部密钥：hex 串，URL 后缀 ;pk;密钥         (AES.java:30-42 ECB())
另加  JPEG/BMP 头后直接跟 ew0K base64（饭太硬变体）

依赖 cryptography（无则退化为只解明文/base64）。
"""
import base64 as _b64
import binascii
import json
import re

try:
    from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
    _HAS_AES = True
except Exception:                                    # pragma: no cover
    _HAS_AES = False

COMMENT_RE = re.compile(r"^\s*//.*?$", re.M)
MARK_RE = re.compile(r"[A-Za-z0]{8}\*\*")           # 图片伪装标记，如 TswYJXMV**


def right_pad(s: str, n: int = 16) -> bytes:
    """AES.java rightPadding：不足 n 位右补 '0'"""
    b = s.encode("latin-1", "replace")
    if len(b) < n:
        b = b + b"0" * (n - len(b))
    return b[:n]


def strip_comments(t: str) -> str:
    t = COMMENT_RE.sub("", t)
    i = t.find("{")
    return t[i:] if i >= 0 else t


def to_json(text: str):
    """明文/解码后文本 -> dict；容错 // 注释与 BOM"""
    if not isinstance(text, str):
        return None
    t = text.lstrip("\ufeff").strip()
    if t[:1] != "{":
        i = t.find("{")
        if i < 0:
            return None
        t = t[i:]
    try:
        d = json.loads(t)
    except Exception:
        try:
            d = json.loads(strip_comments(text))
        except Exception:
            return None
    return d if isinstance(d, dict) else None


def b64_after(s: str, start: int):
    """从 start 起提取 base64 并解码为文本（剔除非 base64 字符、补齐 padding）"""
    cand = re.sub(r"[^A-Za-z0-9+/=]", "", s[start:])
    cand = cand[: len(cand) // 4 * 4]
    if len(cand) < 64:
        return None
    try:
        return _b64.b64decode(cand).decode("utf-8", "replace")
    except Exception:
        return None


def dec_image_marked(s: str):
    """格式1：图片伪装 + 8字符标记** + base64"""
    m = MARK_RE.search(s[:4000]) or MARK_RE.search(s)
    if not m:
        return None
    return b64_after(s, m.end())


def dec_obf64(s: str):
    """饭太硬变体：JPEG 头后直接 ew0K 开头的 base64"""
    i = s.find("ew0K")
    return b64_after(s, i) if i >= 0 else None


def unpad(pt: bytes) -> bytes:
    if not pt:
        return pt
    p = pt[-1]
    if 1 <= p <= 16 and pt[-p:] == bytes([p]) * p:
        return pt[:-p]
    return pt


def aes_cbc(key: bytes, iv: bytes, ct: bytes):
    if not _HAS_AES or len(ct) % 16 or not ct:
        return None
    try:
        d = Cipher(algorithms.AES(key), modes.CBC(iv)).decryptor()
        return unpad(d.update(ct) + d.finalize())
    except Exception:
        return None


def aes_ecb(key: bytes, ct: bytes):
    if not _HAS_AES or len(ct) % 16 or not ct:
        return None
    try:
        out = bytearray()
        for i in range(0, len(ct), 16):             # ECB == 逐块 CBC(zero IV)
            d = Cipher(algorithms.AES(key), modes.CBC(b"\x00" * 16)).decryptor()
            out += d.update(ct[i:i + 16]) + d.finalize()
        return unpad(bytes(out))
    except Exception:
        return None


def dec_aes_cbc_hex(s: str):
    """格式2：hex 串 -> $#key#$ 取 key、末13字符取 iv、中间密文"""
    t = s.strip()
    if not re.fullmatch(r"[0-9A-Fa-f\s]+", t[:200]) or len(t) < 64:
        return None
    try:
        raw = binascii.unhexlify(re.sub(r"\s", "", t))
    except Exception:
        return None
    txt = raw.decode("latin-1", "replace")
    m = re.match(r"^\$#(.*?)#\$", txt)
    if not m:
        return None
    key = right_pad(m.group(1))
    iv = right_pad(txt[-13:])
    pt = aes_cbc(key, iv, raw[m.end(): len(raw) - 13])
    return pt.decode("utf-8", "replace") if pt else None


def dec_aes_ecb_hex(s: str, pk: str):
    """格式3：hex 密文 + 外部密钥"""
    if not pk:
        return None
    try:
        raw = binascii.unhexlify(re.sub(r"\s", "", s.strip()))
    except Exception:
        return None
    pt = aes_ecb(right_pad(pk), raw)
    return pt.decode("utf-8", "replace") if pt else None


def decode_body(body, pk: str = None):
    """主入口。返回 (cfg_dict|None, how)
    how: json / img64 / obf64 / aescbc / asecb / None"""
    if body is None:
        return None, None
    if isinstance(body, bytes):
        s = body.decode("latin-1", "replace")
    else:
        s = body
    st = s.lstrip("\ufeff").strip()
    if st[:1] == "{":
        d = to_json(st)
        if d:
            return d, "json"
    if pk:
        d = to_json(dec_aes_ecb_hex(s, pk) or "")
        if d:
            return d, "asecb"
    d = to_json(dec_aes_cbc_hex(s) or "")
    if d:
        return d, "aescbc"
    d = to_json(dec_image_marked(s) or "")
    if d:
        return d, "img64"
    d = to_json(dec_obf64(s) or "")
    if d:
        return d, "obf64"
    # utf-8 再试一次（明文带中文注释时 latin-1 会花）
    if isinstance(body, bytes):
        try:
            d = to_json(body.decode("utf-8"))
            if d:
                return d, "json"
        except Exception:
            pass
    return None, None


if __name__ == "__main__":                          # 自测：解 yoursmile66 XC.json
    import io
    import sys
    p = sys.argv[1] if len(sys.argv) > 1 else "xc.json"
    cfg, how = decode_body(io.open(p, "rb").read())
    print("how=%s keys=%s sites=%s parses=%s lives=%s" % (
        how, sorted(cfg.keys()) if cfg else None,
        len(cfg.get("sites", [])) if cfg else 0,
        len(cfg.get("parses", [])) if cfg else 0,
        len(cfg.get("lives", [])) if cfg else 0))
