# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/8  11:27
'''输出所有1-50之间5的倍数,
5的倍数共同点， 和5取余为0的数
什么数不是5的倍数，1,2,3,4,5，  与5的余数不为0 的数都不是5的倍数
 要求使用continue'''
for i  in range(1,51):
    if i%5==0:
        print(i)

print('------使用continue----------')
for i  in range(1,51):
    if i%5!=0:
      continue
    print(i)
