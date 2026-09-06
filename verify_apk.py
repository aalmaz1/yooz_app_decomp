import sys, zipfile
def names(p):
    raw=open(p,'rb').read().decode('utf-8','replace').replace('\r\n','\n').split('\n')
    out=[];cur=None
    for l in raw:
        if l.startswith('Name: '):
            if cur: out.append(cur)
            cur=l[6:].strip()
        elif l.startswith(' ') and cur is not None:
            cur+=l[1:].strip()          # MANIFEST сворачивает длинные имена
        else:
            if cur: out.append(cur);cur=None
    if cur: out.append(cur)
    return set(out)
orig=names('original/META-INF/MANIFEST.MF')
new=set(zipfile.ZipFile(sys.argv[1]).namelist())
ign_o={'META-INF/YOOZ_KEY.SF','META-INF/YOOZ_KEY.RSA','META-INF/MANIFEST.MF'}
ign_n={x for x in new if x.startswith('META-INF/ANDROIDD.')}
missing=sorted(orig-new-ign_o); extra=sorted(new-orig-ign_n)
print(f'original={len(orig)} built={len(new)}')
print('НЕТ в сборке:',len(missing)); [print('  -',m) for m in missing]
print('ЛИШНИЕ:',len(extra)); [print('  +',e) for e in extra]
sys.exit(1 if missing else 0)
