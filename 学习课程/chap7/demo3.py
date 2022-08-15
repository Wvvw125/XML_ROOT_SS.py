# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/14 9:35
'''key的判断'''

scores={'张三':100,'李四':98,'王五':45}
print('张三' in scores)
print('张三' not  in scores)

del scores['张三']   #删除指定的键值对  key  value  对
#scores.clear()       #清空字典中的元素
print(scores)
scores['陈六']=98
print(scores)

scores['陈六']=100     #修改指定的键值（元素）
print(scores)
