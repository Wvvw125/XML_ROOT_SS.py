# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  22:59
'''题目：编写一个函数，输入n为偶数时，调用函数求1/2+1/4+...+1/n,当输入n为奇数时，调用函数1/1+1/3+...+1/n

程序分析：无'''

a=int(input('请输入一个数：'))

def single(a):
    Sn = 0.0
    for i in range(2,a+1,2):
      Sn+=(1.0/a)
    return Sn

def double(a):
    Sn= 0.0
    for i in range(1,a+1,2):
      Sn+=(1.0/a)
    return Sn

if __name__=='__main__':
    if a %2==0:
        print(double(a))
    else:
        print(single(a))