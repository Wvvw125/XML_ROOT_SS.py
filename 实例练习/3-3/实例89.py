# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/5/22  12:10
'''题目：某个公司采用公用电话传递数据，数据是四位的整数，在传递过程中是加密的，
加密规则如下：
每位数字都加上5,
然后用和除以10的余数代替该数字，
再将第一位和第四位交换，
第二位和第三位交换。
程序分析：无。'''
list=[]
num=input("请输入一个要传递的号码：")
for i in  num:
    list.append(i)
def lock(n):
    k=(n+5)%10
    return k
for n in  list:
    #list.insert(lock(int(n)))
    list.insert(list.index(n),lock(int(n)))
    list.remove(n)
list[0],list[3]=list[3],list[0]
list[1],list[2]=list[2],list[1]
print(list)

import time

print(time.ctime(time.time()))
print(time.asctime(time.localtime(time.time())))
print(time.asctime(time.gmtime(time.time())))