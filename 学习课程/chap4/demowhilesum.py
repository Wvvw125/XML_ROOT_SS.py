# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/30 22:09
'''四步循环法
1，初始化变量
2条件判断
3，条件执行体（循环体）
4，改变变量
总结初始化的变量和条件判断的变量与改变的变量是同一个'''
sum=0   #用于存储累加和
'''初始化变量为0'''
a=0
'''条件判断'''
while a<5:
    '''条件执行体（循环体）'''
    sum+=a
    '''改变变量'''
    a+=1
print('和为',sum)