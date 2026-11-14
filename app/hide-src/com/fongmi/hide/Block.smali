.class public Lcom/fongmi/hide/Block;
.super Ljava/lang/Object;
.source "Block.java"


.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static defaultKeys()Ljava/lang/String;
    .locals 1
    const-string v0, "\u7f51\u76d8,\u4e91\u76d8,\u767b\u5f55,\u767b\u9646,\u76d8\u641c,\u4e91\u641c,\u84dd\u594f,\u5938\u514b,\u76d8\u5979,\u76d8\u4ed6,UC\u76d8,UC,\u56db\u76d8,\u4f18\u6c50,\u641c\u641c,\u914d\u7f6e,\u8bbe\u7f6e,\u6613\u641c,\u62a0\u62a0,\u672c\u5730,\u6587\u4ef6,\u63a8\u9001"
    return-object v0
.end method

# 手填关键字
.method public static getKeys()Ljava/lang/String;
    .locals 3
    const-string v0, "site_block_keys"
    const-string v1, ""
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :cond_trim
    const-string v1, ""
    :cond_trim
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-eqz v2, :cond_ret
    # 手填为空 -> 用网络缓存（默认URL或用户填的地址拉取后写入）
    const-string v0, "site_block_keys_cache"
    const-string v1, ""
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :cond_rett
    const-string v1, ""
    :cond_rett
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v1
    return-object v1
    :cond_ret
    return-object v1
.end method

.method public static setKeys(Ljava/lang/String;)V
    .locals 2
    const-string v0, "site_block_keys"
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->put(Ljava/lang/String;Ljava/lang/Object;)V
    return-void
.end method

.method public static getKeysUrl()Ljava/lang/String;
    .locals 3
    const-string v0, "site_block_keys_url"
    # 默认关键字地址（仓库内 block_keys.txt），用户清空保存后为 "" = 不过滤
    const-string v1, "https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/output/block_keys.txt"
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :cond_r
    const-string v1, ""
    :cond_r
    return-object v1
.end method

.method public static setKeysUrl(Ljava/lang/String;)V
    .locals 2
    const-string v0, "site_block_keys_url"
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->put(Ljava/lang/String;Ljava/lang/Object;)V
    return-void
.end method

# 从网络地址拉取关键字，存缓存；返回 true 表示成功
.method public static refreshKeys()Z
    .locals 5
    invoke-static {}, Lcom/fongmi/hide/Block;->getKeysUrl()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-eqz v1, :cond_fetch
    const/4 v0, 0x0
    return v0
    :cond_fetch
    :try_start
    invoke-static {v0}, Lcom/github/catvod/net/OkHttp;->string(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :cond_err
    if-nez v2, :cond_ok
    const/4 v0, 0x0
    return v0
    :cond_ok
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-eqz v3, :cond_store
    const/4 v0, 0x0
    return v0
    :cond_store
    const-string v3, "site_block_keys_cache"
    invoke-static {v3, v2}, Lcom/github/catvod/utils/Prefers;->put(Ljava/lang/String;Ljava/lang/Object;)V
    const/4 v0, 0x1
    return v0
    :cond_err
    const/4 v0, 0x0
    return v0
.end method

.method public static isBlockOn()Z
    .locals 2
    const-string v0, "site_block_on"
    const/4 v1, 0x1
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->getInt(Ljava/lang/String;I)I
    move-result v0
    const/4 v1, 0x1
    if-ne v0, v1, :cond_x
    const/4 v0, 0x1
    return v0
    :cond_x
    const/4 v0, 0x0
    return v0
.end method

.method public static toggleBlock()V
    .locals 3
    const-string v0, "site_block_on"
    const/4 v1, 0x0
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->getInt(Ljava/lang/String;I)I
    move-result v1
    const/4 v2, 0x1
    if-ne v1, v2, :cond_off
    const/4 v1, 0x0
    goto :goto_set
    :cond_off
    const/4 v1, 0x1
    :goto_set
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/github/catvod/utils/Prefers;->put(Ljava/lang/String;Ljava/lang/Object;)V
    return-void
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .locals 6
    if-eqz p0, :cond_no
    invoke-static {}, Lcom/fongmi/hide/Block;->getKeys()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_no
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-eqz v4, :cond_go
    const/4 v0, 0x0
    return v0
    :cond_go
    const-string v1, "[\\s,\uff0c\u3001;\uff1b|/]+"
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    array-length v1, v0
    const/4 v2, 0x0
    :goto_loop
    if-ge v2, v1, :cond_no
    aget-object v3, v0, v2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-eqz v4, :cond_chk
    add-int/lit8 v2, v2, 0x1
    goto :goto_loop
    :cond_chk
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :cond_next
    const/4 v0, 0x1
    return v0
    :cond_next
    add-int/lit8 v2, v2, 0x1
    goto :goto_loop
    :cond_no
    const/4 v0, 0x0
    return v0
.end method
