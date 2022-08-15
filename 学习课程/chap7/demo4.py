# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/14 9:42
scores={'张三':100,'李四':98,'王五':45}
#获取所有的key
k=scores.keys()
print(k)
print(type(k))
print(list(k))  #将所有的key组成的视图转换成列表

#获取所有的value
values=scores.values()
print(values)
print(type(values))

#获取所有的key_value 对
items=scores.items()
print(items)
print(list(items))  #元组 转换之后的列表元素是由元组组成（下章学习）

