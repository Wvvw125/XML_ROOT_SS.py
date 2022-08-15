# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  22:55
# 表格反向输出
if __name__ == '__main__':
    ptr = []
    for i in range(5):
        num = int(input('please input a number:\n'))
        ptr.append(num)
    print (ptr)
    ptr.reverse()
    print (ptr)