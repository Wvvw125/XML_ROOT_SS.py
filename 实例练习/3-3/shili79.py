# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  23:17
'''题目：字符串排序。'''

if __name__ == '__main__':
    str1 = input('input string:\n')
    str2 = input('input string:\n')
    str3 = input('input string:\n')
    print
    (str1, str2, str3)

    if str1 > str2: str1, str2 = str2, str1
    if str1 > str3: str1, str3 = str3, str1
    if str2 > str3: str2, str3 = str3, str2

    print
    ('after being sorted.')
    print
    (str1, str2, str3)