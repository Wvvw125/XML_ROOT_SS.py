# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/14 9:18
scores={'张三':100,'李四':98,'王五':45}
'''第一种方式使用[]'''
print(scores['张三'])
#print(scores['陈六'])  #   KeyError: '陈六'
'''第二种方式，使用get()方法'''
print(scores.get('张三'))
print(scores.get('陈六'))   #None
print(scores.get('麻七',99))   # 查找'麻七'所对的value 不存在时，提供的一个默认值