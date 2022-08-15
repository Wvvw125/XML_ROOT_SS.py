# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/9 22:19
'''流程控制语句中break与countinue在二重循环中的使用'''
for i  in  range(5):  #代表外层循环要执行几次
    for j in range(1,11):
        if j%2==0:
            #break
            continue
        print(j,end='\t')
    print()

