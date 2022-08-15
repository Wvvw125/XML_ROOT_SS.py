# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/26 21:23
'''会员 >=200   8 折
>=100  9折
不打折
非会员 >= 200  9.5折
 不打折 '''
answer= input("您是会员码？y/n")
#外层判断是否是会员
money=float(input('请输入您的购物金额：'))
if answer=="y": #会员
    if money>=200:
        print('打八折，付款金额为：',money*0.8)
    elif money>=100:
        print('打九折，付款金额为:',money*0.9)
    else:
        print('不打折，付款金额为：',money)
else:#非会员
    if money>=200:
        print('打9.5折，付款金额为',money*0.95)
    else:
        print('不打折，付款金额为',money)

