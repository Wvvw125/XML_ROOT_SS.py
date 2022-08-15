# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/28  20:24
#1,交集
s1={10,20,30,40}
s2={20,30,40,50,60}
print(s1.intersection(s2))  # s1.intersection()  与& 等价，交集操作
print(s1&s2,'\n')
print(s1)
print(s2,'\n')
#2，并集操作
print(s1.union(s2))
print(s1|s2,'\n')      #union  |  等价并集操作
print(s1)
print(s2,'\n')
#3，差集操作
print(s1.difference(s2))
print(s1-s2,'\n')
print(s1)
print(s2,'\n')

#4,对称差集   (交集，取反)
print(s1.symmetric_difference(s2))
print(s1^s2,'\n')
