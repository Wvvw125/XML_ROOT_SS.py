# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/10 21:17
#密码输入
b=120000
a=0
r1=0
while a<3:
    if r1>0:
        break
    else:pass
    pwd=input('请输入密码：')
    if  pwd=='8888':
        print('您输入的密码正确')
        c=input('是否查询余额y/n')
        if c=='y':
             print('您的余额为',b,'元')
             #print(id(b),type
             for  d in range(1,4):
                 j = int(input('请输入取款金额：'))
                 if j>b:
                  print('输入金额大于账户存款,请确认后重新输入')
                  d+=1
                 else:
                   r= b-j
                 # print(type(j))
                   print('请在去钞口取走您的钞票', '您的余额为:', r)
                   r1+=1
                   break
        else:pass
    else:
        print('您输入的密码错误请重新输入')
        a+=1
else:
 print('密码已输入错误三次，密码锁定')