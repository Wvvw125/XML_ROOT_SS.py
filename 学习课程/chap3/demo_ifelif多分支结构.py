# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/24 20:57
'''90-100
80-89
70-79
60-69
0-59
小于0或者大于0为非法数据（不是成绩的有些范围）'''

score=int(input("请输入一个成绩："))
#判断
if score>=90 and score<=100:
    print("A")
elif score>=80 and score<=89:
    print("B")
elif score>=70 and score<=79:
    print("C")
elif score>=60 and score<=69:
    print("D")
elif score>=0 and score<=59:
    print('E')
else:
    print("对不起，成绩有误，不在成绩有效范围")

score=int(input("请输入一个成绩："))
#判断
if 100>=score>=90 :
    print("A")
elif 90>=score>=80:
    print("B")
elif score>=70 and score<=79:
    print("C")
elif score>=60 and score<=69:
    print("D")
elif score>=0 and score<=59:
    print('E')
else:
    print("对不起，成绩有误，不在成绩有效范围")