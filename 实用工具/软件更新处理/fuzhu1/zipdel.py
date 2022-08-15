# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/23  16:43
import os

def zpdele(path):
  a=0
  zdl=os.listdir(path)
  for l1 in zdl:
    if '.zip' in l1:
        os.chdir(path)
        print('删除压缩文件',a)
        a+=1
        os.remove(l1)