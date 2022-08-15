# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/7/27  22:23
s='hello.Python'

s1=s[:5]
s2=s[6:]
s3='!'
newstr =s1+s3+s2
print(s1)  #由于没有指定起始位置， 从0 开始切
print(s2)  #由于没有指定结束位置，  所有切到最后一个元素
print(newstr)
print('----------------------')
print(id(s))
print(id(s1))
print(id(s2))
print(id(s3))
print(id(newstr))

print('----------[start:end:step]-------------')
print(s[1:5:1])  #从1开始截到5 （不包含5），步长为1
print(s[::2])#  默认从0 开始，没有写结束，默认字符串最后一个元素，步长为2，两个元素之间的索引间隔为2
print(s[::-1])#默认从字符串的最后一个元素开始，到字符串的第一个元素结束，步长为负数
print(s[-6::1])#从索引为负6开始，到字符串的最后一个元素结束。步长为1