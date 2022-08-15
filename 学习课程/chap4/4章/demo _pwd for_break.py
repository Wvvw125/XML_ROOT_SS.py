# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/7  20:50
'''结束语句'''
'''从键盘录入密码，最多录入三次，如果正确就结束循环'''
A = 0
for i in range(3):
    pwd=input('请输入密码')
    if pwd=='8888':
        print('密码正确')
        break
    else:
        print('密码不正确')
        A+=1
        if A==3:
           print('您已输入密码错误三次，密码锁定')
           break