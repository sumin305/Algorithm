a=input().upper()
alp=list(set(a))
cnt=[]
for i in alp:
    cnt.append(a.count(i))
if cnt.count(max(cnt))>1:
    print('?')
else:
    print(alp[cnt.index(max(cnt))])
