# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/7/18  13:16
#字符串的劈分
s='hello word python'
list=s.split()
print(list)
s1='hello|world|python'
print(s1.split())
print(s1.split(sep='|'))
print(s1.split(sep='|',maxsplit=1))
'''rsplist()'''
print(s.rsplit())
print(s1.rsplit(sep='|'))
print(s1.rsplit(sep='|',maxsplit=1))