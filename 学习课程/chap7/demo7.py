# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/21  19:51
'''打包 成字典'''
items=['fruits','Books',';Others']
prices=[96,78,95,99,100]                #以元素少的为基准

d={ item.upper():price  for item,price in zip(items,prices)}
print(d)