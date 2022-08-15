# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  23:12
'''题目：找到年龄最大的人，并输出。请找出程序中有什么问题。

程序分析：无。'''
if __name__ == '__main__':
    person = {"li":18,"wang":50,"zhang":20,"sun":22}
    m = 'li'
    for i in person.keys():
        if person[i] > person[m]:
            m=i
        else:
            pass
    print("%s,%d"%(m,person[m]))