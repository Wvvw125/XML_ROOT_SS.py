# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/5/18  10:02
h = 0
leap = 1
from math import sqrt
from sys import stdout
for m in range(1,100):
    k = int(sqrt(m + 1))
    for i in range(2,k + 1):
        if m % i == 0:
            leap = 0
            break
    if leap == 1:
        print ('%-4d' % m)
        h += 1
        if h % 10 == 0:
            print ('')
    leap = 1
print ('The total is %d' % h)