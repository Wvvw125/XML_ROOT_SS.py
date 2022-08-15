# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/4 10:28
name='张三'
age=20

print(type(name),type(age))  #name  与age的数据类型不相同

# 报错  print('我叫'+name+'今年'，+age+"岁")
print('我叫'+name+',''今年,'+str(age)+'岁')
print('我叫',name,'今年,',str(age),'岁')

# str   其他数据类型转换成 字符串
# int   其他数据类型转换成  整数
# float  其他数据类型转换成  浮点数
print('-------------str()将其他类型转换成str类型------')
a=10
b=198.8
c=False
print(type(a),type(b),type(c))
print(str(a),str(b),str(c),type(str(a)),type(str(b)),type(str(c)))

print('-------------int()将其他类型转换成int类型----------------')
s1='128'
f1=98.7
s2='76.77'
ff=True
s3="hello"
print(type(s1),type(f1),type(s2),type(ff),type(s3))
print(int(s1),type(int(s1)))   # 将str转换成int 类型  ，字符串是数字串前提
print(int(f1),type(int(f1)))    # float转换成int类型， 截取整数部分，舍掉小数
#print(int(s2),type(int(s2)))  #将str转换成int类型，报错，因为字符串为小数串
print(int(ff),type(int(ff)))
#print(int(s3),type(int(s3)))   #将str转换成int类型时，字符串必须为数字串（整数）
                                #非数字串师不允许转换的

print("--------------float()函数，将其他数据类型转换成float类型--------")

s1='128.98'
s2='76'
ff=True
s3="hello"
i=98

print(type(s1),type(s2),type(ff),type(s3),type(i))
print(float(s1),type(float(s1)))
print(float(s2),type(float(s2)))
print(float(ff),type(float(ff)))
#print(float(s3),type(float(s3)))  #字符串中的数据如果是非字符串，是不允许转换

print(float(i),type(float(i)))

