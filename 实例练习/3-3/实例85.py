# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/5/22  11:30
'''题目：输入一个奇数，然后判断最少几个 9 除于该数的结果为整数。
程序分析：999999 / 13 = 76923。'''
from  time import  sleep
a=int(input('请输入一个奇数：'))
b=0
while b>=0:
    b=(b*10+1)
    if b*9%a==0:
        print('一共%d个9'%len(str(b)))
        break


x='adsff'
y='sfdg'
xy=x+y
print(xy)