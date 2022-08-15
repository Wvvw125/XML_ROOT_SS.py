# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/22  21:07
"""需求
1 清除log
2 删除skin
3 更新软件版本（时间戳改变问题？）
4 更新清洗动作
"""
import os,sys
import shutil
import zipfile

path="F:\\wwx使用\\buckup\\目标\\Tx800"      #目标软件目录
path1="F:\\售后体系库\\……【客户软件库】……\\V2.0平台\\【版本更新列表】"   #更新包目录
FN='发布-1.0.0.49-2-1.zip'
path2="F:\\售后体系库\\(清洗配置)\新平台\\整体清洗\\合集"     #清洗动作目录

#清除log
dll= os.listdir(path+'/'+'log')
for a in  dll:
    if  '.log' in  a:
        os.chdir(path+'/'+'log')
        os.remove(a)  # 删除指定文件(单文件)

#删除skin
dls=os.listdir(path)
for b in dls:
    if  b=="skin":
        os.chdir(path)
        shutil.rmtree(b)   #删除文件夹

#更新软件版本
os.chdir(path1)
tar = zipfile.ZipFile(FN,'r')
tar.extractall(path)  # 可设置解压地址    会更新文件时间
tar.close()

#更新清洗动作
cpl=os.listdir(path2)
for c in cpl:
  if '.xml' in c:
      os.chdir(path2)
      shutil.copy2(c,path+"/"+'Action')    # shutil.copy() 会修改创建时间  shutil.copy2()

