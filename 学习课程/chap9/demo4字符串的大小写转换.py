# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/7/18  13:13
''''''
#字符串的大小写转换，
'''
.upper() 所有 ，小写转大写
.lower()    所有，大写转小写
.swapcase() 所有 ， 大小 写互转换（大变小，小变大）。
.capitalize() 第一个字符转换为大写，把其余字符转换为小写
.title()，把每个单词的第一个字符转换为大写，
        把每个单词的剩余字符转换为小写'''

s='hello,python'
a=s.upper()     #转大写之后，会产生一个新的字符串对象不驻留
print(a,id(a))
print(s,id(s))
b=s.lower()      #转换之后   ，会产生一个新的字符串对象，不驻留
print(b,id(b))
print(s,id(s))
print(b==s)
print(b is s)

s2='hello,PYThoN'
c=s2.swapcase()    #转换之后，产生新对象  不驻留
d=s2.title()         #转换之后，产生新对象  不驻留
e=s2.capitalize()      #转换之后，产生新对象  不驻留
print(c,id(c))
print(d,id(d))
print(e,id(e))
print(s2,id(s2))