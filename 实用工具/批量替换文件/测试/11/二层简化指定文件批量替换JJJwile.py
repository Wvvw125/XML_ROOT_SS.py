# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/10 10:48
# -*- coding: utf-8 -*-

#指定文件夹（目录及下一级子目录批量替换）
path0 ='F:/wwx使用/buckup/PycharmProjects/实用工具/测试/目标' # input修改目录
path1='F:/wwx使用/buckup/PycharmProjects/实用工具/测试/改动' #材料目录

#删除
PNG0 = 'checkdietry.png'
PNG1 = 'checked.png'
#增加
D ='checked.png'
import os
import shutil

FA= os.listdir(path0)
for a in FA:
    if '.' not in a:
        path2=path0+'/'+a
        FC=os.listdir(path2)
        for b in FC:
            if '.' not in b:
                path3 = path2 + '/' + b
                # print (path3)
                FD = os.listdir(path3)
                for c in FD:
                    if c == PNG0 or c == PNG1:
                      os.chdir(path3)
                      os.remove(c)  # 删除指定文件
                      os.chdir(path1)
                      shutil.copy(D, path3)
                      print('3')
                    else:
                        print('超出循环次数')
            else:
                if b == PNG0 or b == PNG1:
                    os.chdir(path2)
                    os.remove(b)  # 删除指定文件
                    os.chdir(path1)
                    shutil.copy(D, path2)
                    print('2')
    else:
      if a==PNG0 or a==PNG1:
        os.chdir(path0)
        os.remove(a)  #删除指定文件
        os.chdir(path1)
        shutil.copy(D, path0)
        print('1')




