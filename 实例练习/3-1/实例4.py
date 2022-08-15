# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/13 18:52
year=int(input('year:\n'))
mounth=int(input('mounth:\n'))
day=int(input('day:\n'))
sum,a=0,0
mounths=[0,31,28,31,30,31,30,31,30,31,30,31,30]
for mounth in  range(1,mounth):
   if 0<mounth<=12:
    sum+=mounths[mounth]
   else:
    print('date error')
sum+=day
if (year%4==0 and year%100!=0)or year%400==0 :
   a=1
if a==1 and mounth>2:
   sum+=1
print(a)