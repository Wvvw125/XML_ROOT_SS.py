# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/5/22  11:54
if __name__ == '__main__':
    class student:  #初始化 归零
        x = 0
        c = 0
    def f(stu):
        stu.x = 20
        stu.c = 'c'
    a= student()
    a.x = 3
    a.c = 'a'
    f(a)
    print( a.x,a.c)