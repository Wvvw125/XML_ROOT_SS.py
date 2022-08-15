# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/8/8  22:41
def fun(arg1, arg2):
    print('arg1=', arg1)
    print('arge2=', arg2)
    arg1 = 100
    arg2.append(10)
    print('arg1=', arg1)
    print('arg2', arg2)
    #return
n1=11
n2=[22,33,44]
print(n1)
print(n2)
print('_________________')
fun(n1,n2)   # 将位置传参，arg1，arg2,是函数定义处的形参，n1,n2是函数调用实际参数：实参和形参名称可不同
print(n1)
print(n2)

'''在函数的调用过程中，进行参数的传递
如果是不可变对象，在函数体的修改不会影响实参的值  arg1 的修改为100 ，不会影响n1的值
如果是可变对象，在函数体的修改会影响实参的值     arg2的修改，。append（10）会影响到n2的值'''