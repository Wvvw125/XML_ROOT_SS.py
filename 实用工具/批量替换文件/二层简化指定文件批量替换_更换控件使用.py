# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/10 10:48
# -*- coding: utf-8 -*-
#删除
PNG0 = 'checkdietry.png'
PNG1 = 'checked.png'
#增加
PNG2 = 'checkdietry.png'
PNG3 = 'checked.png'       #指定替换文件
import os
import shutil
class main():
 #指定文件夹（目录及下一级子目录批量替换）
 path_0='F:/售后体系库/……【客户软件库】……/V2.0平台/【版本更新列表】/发布-1.0.0.66-1' # input修改目录
 path0 =path_0+'/skin/betterprinter'
 path =path0+'/default'
 path1='F:/售后体系库/……【客户软件库】……/V2.0平台/【版本更新列表】/控件颜色/对勾' #材料目录
 pathstyle='F:/售后体系库/……【客户软件库】……/V2.0平台/【版本更新列表】/控件颜色/界面白'   #界面风格目录
 FA= os.listdir(path)
 FB= os.listdir(path1)
 FE= os.listdir(path0)
 Flo=os.listdir(path_0)
 F_style=os.listdir(pathstyle)
 for a in FA:
 #   print(a,type(a),id(a))
    if '.' not in a:
        d=a
        path4=path+'/'+d
       # print (path4)
        FC=os.listdir(path4)
        for c in FC:
         if c == PNG0:
               os.chdir(path4)
               os.remove(c)  # 删除指定文件
         #      print('6')
         elif c == PNG1:
               os.chdir(path4)
               os.remove(c)  #删除指定文件
         #      print('7')
        for d in FB:
             if d == PNG2:
                 os.chdir(path1)
                 shutil.copy(d, path4)
             elif d == PNG3:
                 os.chdir(path1)
                 shutil.copy(d, path4)
    else:
     #print(4)
     if a==PNG0:
        os.chdir(path)
        os.remove(a)  #删除指定文件
     #   print('1')
     elif a==PNG1:
        os.chdir(path)
        os.remove(a)  #删除指定文件
     #   print('0')
 for b in FB:
    if b ==PNG2:
      os.chdir(path1)
      shutil.copy(b, path)
    elif b==PNG3:
      os.chdir(path1)
      shutil.copy(b, path)
 print('对勾替换完成')
 #删除logo
 for e in FE:
  if '.dat' in e:
     os.chdir(path0)
     os.remove(e)  # 删除指定文件
     print('删除logo')
  else:
    continue
  for e in Flo:
      if e=='logo.dat'  :
          os.chdir(path0)
          os.remove(e)  # 删除指定文件
          print('删除logo')
      else:
          continue
 #替换外显示界面
 for i in F_style:
     os.chdir(pathstyle)
     shutil.copy(i,path0)
 ppstyle=pathstyle.split( '/')[-1]
 print('界面替换为',ppstyle)
 os.chdir('F:/售后体系库/……【客户软件库】……/V2.0平台/【版本更新列表】')
 if ppstyle=='界面黑':
    name=path_0.split('/')[-1]+'_1b'
 else:
    name = path_0.split('/')[-1]+'_1'
 shutil.make_archive(name,'zip',path_0)
print('程序执行完成')