# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/7  20:57
i=0
while i<3:
    pwd=input('请输入密码：')
    if pwd=='8888':
        print('密码正确')
        break
    else:
        print('密码不正确')
        i+=1
        if i==3:
           print('您的密码已输入错误三次，已锁定')
           break
