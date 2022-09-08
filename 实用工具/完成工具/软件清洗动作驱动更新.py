# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/10 10:48
# -*- coding: utf-8 -*-
DevVer='3.0'                #usb版本  2.0     3.0
import os
import shutil
path_0='F:\售后体系库\……【客户软件库】……\V2.0平台\国外\印度客户\\1600_1.0.0.73' # input修改目录
class main():
 #指定文件夹（目录及下一级子目录批量替换）
 path0 =path_0+'/usb device'
 path =path_0+'/Action'
 path1='F:\\售后体系库\(清洗配置)\\新平台\\4去多复动作'  #清洗动作目录 材料目录
 path_Deviece='F:\\售后体系库\\USB驱动\\无logo驱动\\USB'+DevVer   #驱动   界面风格目录
 Fa=os.listdir(path0)
 FB= os.listdir(path1)
 FDI=os.listdir(path_Deviece)
 #复制清洗动作
 for d in FB:
                 os.chdir(path1)
                 shutil.copy2(d,path)
 #删除驱动
 for a  in Fa:
    if '.'in a:
         os.chdir(path0)
         os.remove(a)
    else:
        pass
 #复制驱动
 for c in range(0,len(FDI)):
     if DevVer =='2.0':
                 os.chdir(path_Deviece)
                 shutil.copy2('win7_win10_Device 2.0.exe',path0)
     elif DevVer =='3.0':
         os.chdir(path_Deviece)
         shutil.copy2('win7_win10_Device 3.0.exe', path0)
     else:
         continue


print('程序执行完成')
if __name__ =="__mian__":
    main()
