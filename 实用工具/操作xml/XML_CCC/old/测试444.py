# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/24 14:38
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import os
from XML_ROOT_SSSS import main,setset
path = "F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改"  # 'E:\2.0打印软件2022年1月\G5I\SoftConfig'  # 目标文件夹
# 加载目录
os.chdir(path)
f_name = main(path).find_name(path)
print('可修改配置数量：', len(f_name), '可修改配置名：', f_name)

while True:
    setNUM = int(input('请输入修改个数（1，任意数值修改全部）'))  # 设置  修改文件个数
    # 设置 目标个数文件
    if setNUM == 1:
        setint = int(input('请输入第几个：'))
        f_name1 = f_name[setint - 1]  # [num]
        print("开始修改配置", f_name1)
        setset(path, f_name1)
        break
    else:
        choice_yn = input('确认修改多个配置文件 y/n?（选择n将退出修改）:')
        if setNUM > len(f_name):
            print('输入修改个数超过实际数量！！')
        else:
            if choice_yn == 'y' or choice_yn == 'Y':

                for num in range(0, setNUM):
                    f_name1 = f_name[num]  # [num]
                    print("开始修改配置", f_name1)
                    setset(path, f_name1)
            else:
                print('退出修改')
            break

    continue