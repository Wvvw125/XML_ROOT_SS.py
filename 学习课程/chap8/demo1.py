# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/21  20:03
'''不可变序列，可变序列'''
#可变序列，  列表 ，字典
lst=[10,20,30]
print(id(lst))
lst.append(300)
print(id(lst))

'''不可变序列，字符串，元组'''
s='hello'
print(id(s))
s=s+'world'
print(id(s))
print(s)