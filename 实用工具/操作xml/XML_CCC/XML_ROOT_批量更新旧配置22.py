# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 13:56

import xml.etree.ElementTree as ET
import os
from time import  sleep
#1  配置1 标准   配置2 取喷头配置   合成 配置3   覆盖配置2
globals()
aa ='alias'
vv ='value'
nname='name'
class main(object):

 def __init__(self,path):
    self.path=path

 #目标路径找文件
 def find_name(self,path):
     findname = os.listdir(path)
     f_name = []
     for nam in findname:
       if '.xml' in nam:
          f_name.append(nam)
          continue
       else:
          print('目标为其他文件，请添加配置文件后重试！！！！')
          continue
     return f_name

 #内容加载，数据化加载 etree
 def root1(self,path,f_name):
       global  tree,root,xml_file
       xml_file = path +'\\'+f_name
       tree = ET.parse(xml_file)
       root = tree.getroot()
      # return root,tree,xml_file

 # 0 标准配置 取出 非标内容 除去喷头 放入列表
 def newstandard_input(self):
    for i in range(0,len(root)):
        if   i==2 :
          rootlist.append('别Q我，我只是个占位！！！^*^')
        else:
         rootlist.append(root[i])
         print('|',root[i].attrib[aa],'|',end='')
    return  rootlist

 # 取出list 内 内容更新到新配配置   root
 def oldupdate_output(self):
     for i in  range(0,len(root)):
         if   i==2 :
            pass
         elif i==9 :   #指定内容不替换 ， 并排喷头状态
             a=root[i][-1]
             root[i]=rootlist[i]
             root[i][-1]=a
         else:
            root[i] = rootlist[i]
 # 追加头文件

 #内存设置
 def setRam(self):
     def RAM512():
         while True:
             for a in range(1, 3):
                 root[4][a].set(vv, '512')
             print('内存大小', root[4][1].attrib[nname], root[4][1].attrib[aa], root[4][1].attrib[vv])
             break

     def RAM256():
         while True:
             for a in range(1, 3):
                 root[4][a].set(vv, '256')
             print('内存大小', root[4][1].attrib[nname], root[4][1].attrib[aa], root[4][1].attrib[vv])
             break

     while True:

         if root[4][1].attrib[nname] == 'nBoardMemory':
             if root[3][3][0].attrib[vv] == '192.168.0.2':
                 RAM512()
                 break
             elif  root[2][9].attrib[vv] >'2' and root[2][0].attrib[vv] == '260':
                 if '7610' or '1600'   in f_name2:
                      RAM256()
                      break
                 else:
                     RAM512()
                     break
             elif root[2][9].attrib[vv] <= '2' and root[2][0].attrib[vv] == '260':
                 RAM256()
                 break
             else:
                 RAM256()
                 break
         else:
             print(root[4][9].attrib[aa], '配置错误，更新后重试')
             sleep(5)
             pass

 #更新头文件
 def update_xml(self):
     out = open(xml_file, 'wb')
     out.write(b'<?xml version="1.0" encoding="UTF-8" standalone = "yes" ?>\n')
     tree.write(out, encoding='UTF-8', xml_declaration=False)
     out.close()

#加载标准文件内容
class setsetinput(object):
  def __init__(self, path, f_name1):
    self.path = path
    self.f_name1=f_name1
    Run = main(path)
    Run.root1(path,f_name1)
    X=Run.newstandard_input()
    print('留存标准文件内容行数:',X.__len__(),'\n','内容',X)

#设置更新配置内容
class setset(object):
 def __init__(self, path,f_name1):
    global xxx
    self.path = path
    self.f_name1=f_name1
    Run = main(path)
    Run.root1(path,f_name1)

    print("===========================开始修改=======================================")
    Run.oldupdate_output()  #旧配置导入新配置
    xxx+=1
    Run.setRam()            #内存设置
    print('完成%d'%xxx)
    print("============================置零修改结束======================================")
    tree.write(xml_file, encoding='utf-8')  # 保存
    Run.update_xml()  # 头文件追加
    print('修改完成！！！！！！！！！！！！！！^x^')

if __name__ == '__main__':
 path= "F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改\BetterPrinterApp调试 - 副本\SoftConfig"           # 目标文件夹
 path_AAAA="F:\售后体系库\……【客户软件库】……\V2.0平台\标准打印软件勿动\BetterPrinterApp配置标准\SoftConfig"    #标准文件夹
 # os.chdir(path_AAAA)  # 移动至标准文件夹
 rootlist = []        # 标准内容留存文件夹
 fs_name=main(path_AAAA).find_name(path_AAAA)  #加载标准文件内容
 print('找到标准文件',fs_name[0])
 setsetinput(path_AAAA,fs_name[0])    #标准内容加载
 sleep(1)
 print()
#批量目标处理
# os.chdir(path)
 xxx=0
 f_name=main(path).find_name(path)
 print('可修改配置数量：',len(f_name),'可修改配置名：',f_name)
 while True:
    setNUM = int(input('请输入修改个数（1，任意数值修改全部）'))   #设置  修改文件个数
 #设置 目标个数文件
    if setNUM == 1:
        setint = int(input('请输入第几个：'))
        f_name2 = f_name[setint - 1]  # [num]
        print("开始修改配置", f_name2)
        setset(path,f_name2)
        break
    else:
        choice_yn = input('确认修改多个配置文件 y/n?（选择n将退出修改）:')
        if setNUM > len(f_name):
            print('输入修改个数超过实际数量！！')
        else:
            if choice_yn == 'y' or choice_yn == 'Y':

                for num in range(0, setNUM):
                    f_name2 = f_name[num]  # [num]
                    print("开始修改配置", f_name2)
                    setset(path,f_name2)
            else:
                print('退出修改')
            break
    continue