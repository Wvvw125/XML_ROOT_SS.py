# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  22:58
'''题目：放松一下，算一道简单的题目。

程序分析：无。'''
if __name__ == '__main__':
    for i in range(5):
        n = 0
        if i != 1: n += 1
        if i == 3: n += 1
        if i == 4: n += 1
        if i != 4: n += 1
        if n == 3: print (64 + i)