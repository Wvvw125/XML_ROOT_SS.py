# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/26  21:45
t=(10,[20,30],9)
print(t)
print(type(t))
print(t[0],type(t[0]),id(t[0]))
print(t[1],type(t[1]),id(t[1]))
print(t[2],type(t[2]),id(t[2]))

'''尝试t[1]修改为100'''
#  t[1]=100
print(id(100))
'''由于[20,30]列表，而列表是可变序列，所以可以向列表中添加元素，而内存地址不变'''
t[1].append(100)  #向列表中添加元素
print(t[1],id(t[1]),type(t[1]))