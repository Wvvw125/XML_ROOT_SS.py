# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/8/2  22:40
#格式化字符串的第一种方式，
#(1)%站位符
name='张三'
age=20
print('我叫%s，今年%d岁' %(name,age))

#(2)  {}
print('我叫{0}，今年{1}岁'.format(name,age))
#(3)   f-string
print(f'我叫{name}，今年{age}岁')
