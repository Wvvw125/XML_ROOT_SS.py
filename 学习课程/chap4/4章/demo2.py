# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/7  19:55
for item in 'Python':  #第一i取出来的是P，将P赋值item,将item的值输出
    print(item)

#range ( )产生一个整数序列，--》也是一个可迭代对象
for i in range(10):
    print(i)

'''如果在循环体中不需要使用自定义变量，可以将自定义变量写为_'''
for _ in range(5):
    print('人生苦短，我用Python')

print('使用for循环，计算1-100之间的偶数和')
sum=0
for item in range(1,101):
    if item%2==0:
        sum+=item
print('1-100之间的偶数和为：',sum)