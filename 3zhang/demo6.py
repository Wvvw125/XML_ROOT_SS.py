# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/4 10:28
#布尔运算符
a,b=1,2
print(a==1 and b==2)  #true          ture  and  ture-->true
print(a==a and b<2)   #False         true and false -->false
print(a!=1 and b==2)  #False         False and true --> False
print(a!=1 and b!=2)  #False         False and False --> False

print('------ or 或者 ------')
print(a==1 or b==2)  #True  or  T    --> T
print(a==1 or b<2)   #T  or  False     -> T
print(a!=1 or b==2)  #F  or  T        --> T
print(a!=1 or b!=2)  #F or    F      --> F

print("------------ not对bool类型数取反-- ---------")
f=True
f2=False
print(not f)
print(not f2)

print('----------in   或者not  in--------')
s='hellowrld'
print('w' in s)
print('k' in s)
print('w' not in s)
print('k' not in s)