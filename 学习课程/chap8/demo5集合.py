# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/27  21:28
#集合的创建方式
'''第一种创建方式使用{}'''
s={2,3,4,5,5,6,7,7}  #集合中的元素不允许重复
print(s)
'''第二种创建方式，使用set（）'''
s1=set(range(6))
print(s1,type(s1))

s2=set([1,5,4,5,6,6])   #列表转集合
print(s2,type(s2))

s3=set((1,2,4,4,5,65))  #元组转集合  ,集合中额元素是无序的
print(s3,type(s3))

s4=set('python')
print(s4,type(s4))

s5=set({12,13,14,56,44,66})
print(s5,type(s5))

'''定义一个空集合'''
s6={}
print(s6,type(s6))   # dict字典类型

s7=set()
print(s7,type(s7))