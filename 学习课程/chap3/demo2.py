# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/24 20:28
# 测试对象的布尔值
print("--------------以下对象为False----------------")
print(bool(False))
print(bool(0))
print(bool(0.0))
print(bool(None))
print(bool(''))
print(bool(""))
print(bool([]))      #空列表
print(bool(list()))  #空列表
print(bool(()))      #空元组
print(bool(tuple())) #空元组
print(bool({}))      #空字典
print(bool(dict()))  #空字典
print(bool(set()))   #空集合

print("-----------其他对象的布尔值均为True----------------")
print(bool(18))
print(bool(True))
print(bool("helloword"))