# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/10 10:48
# -*- coding: utf-8 -*-
#删除
PNG0 = 'checkdietry.png'
PNG1 = 'checked.png'
#增加
PNG2 = 'checkdietry.png'
PNG3 = 'checked.png'
import  os
import shutil

#指定文件夹（目录及下一级子目录批量替换）
path ='F:/wwx使用/buckup/PycharmProjects/实用工具/发布-1.0.0.43/skin/betterprinter/default' # input修改目录
path1='F:/wwx使用/buckup/PycharmProjects/实用工具/测试/改动' #材料目录

FA= os.listdir(path)
FB= os.listdir(path1)

for a in FA:
    if '.' not in a:
        print(a)
        d=a
        path4='F:/wwx使用/buckup/PycharmProjects/实用工具/发布-1.0.0.43/skin/betterprinter/default/'+d
        print (path4)
        FC=os.listdir(path4)
        for c in FC:
         if c == PNG0:
               os.chdir(path4)
               os.remove(c)  # 删除指定文件
               print('6')
         elif c == PNG1:
               os.chdir(path4)
               os.remove(c)  #删除指定文件
               print('7')
        for d in FB:
             if d == PNG2:
                 os.chdir(path1)
                 shutil.copy(d, path4)
             elif d == PNG3:
                 os.chdir(path1)
                 shutil.copy(d, path4)
    else:
     print(4)
     if a==PNG0:
        os.chdir(path)
        os.remove(a)  #删除指定文件
        print('1')
     elif a==PNG1:
        os.chdir(path)
        os.remove(a)  #删除指定文件
        print('0')

for b in FB:
    if b ==PNG2:
      os.chdir(path1)
      shutil.copy(b, path)
    elif b==PNG3:
      os.chdir(path1)
      shutil.copy(b, path)



