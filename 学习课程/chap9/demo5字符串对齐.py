# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/7/18  13:54
# 字符串对齐
''''''
'''字符串
center（）  居中对齐  指定填充
ljust()    左对齐   指定填充
rjust()    右对齐
zfill()    
'''
'''居中对齐'''
s3=
s='hello,python'
print(s.center(20,'@'))   #指定填充
'''左对齐'''
print(s.ljust(20,'^'))     #指定填充
print(s.ljust(10))    #长度小于，返回原字符
print(s.ljust(20))    #不指定填充，默认补空格
'''右对齐'''
print(s.rjust(20,'$'))
print(s.rjust(20))
print(s.rjust(5))

'''右对齐 使用 0 填充'''

print(s.zfill(20))
print(s.zfill(10))
print('-8910'.zfill(8))