# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/11 22:28
lst=['hello','world',98,'hello']  # [0,1,2,3]
print(lst.index('hello'))   #如果列表中有相同元素，只返回列表中相同元素的第一个元素索引
#print(lst.index('Py thon')) #ValueError: 'Python' is not in list
#print(lst.index('hello',1,3))
print(lst.index('hello',1,4))    #lst.index()  查找 索引