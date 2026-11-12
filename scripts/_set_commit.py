import io, re
p = 'scripts/_patch_readme_multi.py'
s = io.open(p, encoding='utf-8').read()
s = re.sub(r'COMMIT = "[0-9a-f]+"', 'COMMIT = "e025d5c6d0ce76baed1d8a71bfdf8173fd22a38d"', s)
io.open(p, 'w', encoding='utf-8').write(s)
print('patched commit ok')
