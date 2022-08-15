# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 13:56
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import xml.etree.ElementTree as ET
import os
from time import  sleep

class main(object):
 def __init__(self,aa,root,tree,xml_file):
    self.aa=aa
    self.root=root
    self.tree=tree
    self.xml_file=xml_file
 def root1(self):
  f_name=os.listdir(self.aa)
  print(f_name)
  for Nam in f_name:
    if '.xml' in Nam:
       print('找到配置文件，开始修改配置。文件名为：',Nam,'...')
       xml_file = self.aa + '\\' + Nam
       tree = ET.parse(xml_file)
       root = tree.getroot()
       print('11')
       return root,tree,xml_file
    else:
        print('目标为其他文件，请添加配置文件后重试！！！！')
 sleep(1)
 def cc(self):
    print(root)
    while True:
     print('4')
     break
 def O(self):
     root[0][0].set('value','2') #x白边
     '''  root[0][1].set('value','0') #Y白边
     root[0][2].set('value','0') #Z白边
     root[0][3].set('value','1')#白墨显示模式
     root[0][4].set('value','0')#墨量显示模式
     root[0][5].set('value','0')#列印显示模式
     root[0][6].set('value','0')#Z电机显示显示模式
     root[0][7].set('value','0')#测高显示模式
     '''
     print('白边模式置0完成：', root[0][0].attrib)
     main.write()
 def write(self):
     tree.write(xml_file,encoding='utf-8')
 def update_xml(self):
     out = open(xml_file, 'wb')
     out.write(b'<?xml version="1.0" encoding="UTF-8" standalone = "yes" ?>\n')
     tree.write(out, encoding='UTF-8', xml_declaration=False)
     out.close()
if __name__ == '__main__':
  # main()
   root=main('F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改',root='',tree='',xml_file='').root1()
   tree=root[1]
   xml_file=root[2]
   print(tree,xml_file)
   main.cc(self='')
   main.O(self='')
