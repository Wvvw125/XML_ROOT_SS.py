# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/28  20:14
s={10,20,30,40}
s2={20,40,30,10}
# 集合是否相等   （元素相同，就相等）
print(s==s2)
print(s!=s2)
#  子集合
'''一个集合是否是一个集合的子集'''
s1={10,20,30,40,50,60}
s2={10,20,30,40}
s3={10,20,90}
print(s2.issubset(s1))
print(s3.issubset(s1))
'''一个是否是另一个集合的超集'''
print(s1.issuperset(s2))
print(s1.issuperset(s3))
'''两个集合是否有交集'''
print(s2.isdisjoint(s3))    #disjoint  不相交
s4={100,200,300}
print(s2.isdisjoint(s4))