# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  20:19
# 编写 input()和 ouput()函数输入，输出5个学生的数据记录
# num: string
# name:string
# score[4]:list
N=3
student=[]
for i in range(5):
    student.append(['','',[]])
def input_stu(stu):
    for i in range(N):
        stu[i][0]=input('输入学生学号：\n')
        stu[i][0]=input('输入学生名字：\n')
        for j in  range(3):
            stu[i][2].append(int(input('socre:\n')))

def output_stu(stu):
    for i in range(N):
        print
        '%-6s%-10s' % (stu[i][0], stu[i][1])
        for j in range(3):
            print
            '%-8d' % stu[i][2][j]

if __name__ == '__main__':
    input_stu(student)
    output_stu(student)
    print(student)