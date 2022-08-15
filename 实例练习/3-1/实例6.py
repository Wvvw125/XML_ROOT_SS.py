# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/13 23:17
list=[0,1]
L=int(input('输出第几位费波纳数列：'))
for i in range(L):
 if i>=2:
    NL= int(list[i-1])+int(list[i-2])
    list.append(NL)
   # i+=1
 elif i==1 :
    continue

print('费波纳数列第'+str(L)+'位是：',list[L-1])
print('费波纳数列'+str(L)+'位分别是',(list))
