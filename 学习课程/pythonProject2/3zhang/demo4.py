# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/4 10:28
#赋值运算符，运算的顺序从右到左
i=3+4
print(i)
a=b=c=20

print(a)
print(a,id(a))
print(b,id(b))
print(c,id(c))
print('--------支持参数赋值---------')
a=20
a+=30      #相当于a=a+3
print(a)
a-=10      #相当于a=a-10
print(a)
a*=2       #相当于a=a*2
print(a)
print(type(a))
a/=3
print(type(a))
print(a)
a//=2
print(a)
print(type(a))
a%=3
print(a)
print(type(a))
print('-----------解包赋值-------')
a,b,c=20,30,40
print(a,b,c)

# a,b=20,30,40   报错，因为左右变量的个数和值得个数不对应
# print(a,b,c)

print('----------交货两个变量的值----------')
a,b=10,20
print('交换之前')
print(a,b)
print(type(a),type(b),id(a),id(b))
#交换
a,b=b,a
print('交换之后')
print(a,b)
print(type(a),type(b),id(a),id(b))