# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/5/22  11:58
'''题目：读取7个数（1—50）的整数值，每读取一个值，程序打印出该值个数的＊'''
if __name__ == '__main__':
    def num(n):
        for i in range(0,n):
          print('*',end='')
        print('\n')
    n=7
    while n<=7:
        str_num=int(input('请输入一个数值：'))
        n-=1
        num(str_num)
        x=str_num*'*'
        print(x)
        break