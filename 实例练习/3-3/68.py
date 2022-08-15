# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  11:57
if __name__ == '__main__':
    n = int(raw_input('整数 n 为:\n'))
    m = int(raw_input('向后移 m 个位置为:\n'))


    def move(array, n, m):
        array_end = array[n - 1]
        for i in range(n - 1, -1, - 1):
            array[i] = array[i - 1]
        array[0] = array_end
        m -= 1
        if m > 0: move(array, n, m)


    number = []
    for i in range(n):
        number.append(int(raw_input('输入一个数字:\n')))
    print('原始列表:', number)

    move(number, n, m)

    print('移动之后:', number)