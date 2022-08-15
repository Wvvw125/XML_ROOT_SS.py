# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  12:01
# 题目：有n个人围成一圈，顺序排号。从第一个人开始报数（从1到3报数），凡报到3的人退出圈子，问最后留下的是原来第几号的那位。
# 统计，输入n,  1-n每个人留存概率
def num(a):
    ll=[]
    for i in range(a):
        ll.append('x'+str(i))
    a=0
    while len(ll)>1:
        b=0
        for i in range(0,len(ll)):
            a+=1
            if a==3:
                a=0
                b+=1
                ll.remove(ll[i+1-b*1])
    num=int(ll[0][1:2])+1
    return num
'''
while len(ll)<=1:
    for2
    
'''
N=int(input('请输入一个数'))
Nl=[]
for i in range(1,N):
    Nl.append(num(i))
print(Nl)
for i in Nl:
 print(i,Nl.count(i))