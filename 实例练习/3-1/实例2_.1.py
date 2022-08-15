# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/13 10:25
i=int(input('当月利润:'))
a,b,d=0,0,0
c=1
list= [1000000,600000,400000,200000,100000,0,0,]
list2=[0.01,0.015,0.03,0.05,0.075,0.1,0,]
for k in range(0,6):
   if i>=list[k]:
       #for y in range(1,2):
           b = (list2[k] * (i - list[k]))
           list3 = [(list[k] - list[k + 1]) * list2[k + 1]]
          #k+=1
           a+=b*c+int(list3[0])
           #d+=a
           c = 0
           del list3
   #else:
    #   k+=1
print('奖金为：',a)


