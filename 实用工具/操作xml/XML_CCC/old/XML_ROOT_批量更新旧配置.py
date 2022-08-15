# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 13:56
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import xml.etree.ElementTree as ET
import os
from time import  sleep
#完善1，set写入 检测非空  2 写入前检测是否对应
#1  配置1 标准   配置2 取喷头配置   合成 配置3   覆盖配置2
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
       return root,tree,xml_file

 # 0 标准配置 取出 非标内容 除去喷头 放入列表
 def newstandard_input(self):
    for i in range(0,len(root)):
        if  i==2 :
            print('移除内容；',root[i])
            print(root[i].attrib[aa])
        else:
         rootlist.append(root[i])
         print(root[i].attrib[aa])
    return  rootlist

 # 取出list 内 内容更新到新配配置   root
 def oldupdate_output(self):
     for i in  range(0,len(root)):
         if  i < 2:
             root[i]=rootlist[i]
         elif  i==2:
            continue
         else:
            root[i] = rootlist[i-1]

 # 追加头文件
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
    print('留存标准文件内容行数:',Run.newstandard_input().__len__(),'\n','内容',Run.newstandard_input())

#设置更新配置内容
class setset(object):
 def __init__(self, path,f_name1):
    self.path = path
    self.f_name1=f_name1
    Run = main(path)
    Run.root1(path,f_name1)

    print("===========================开始修改=======================================")
    Run.oldupdate_output()  #旧配置导入新配置
    print('完成1')
    print("============================置零修改结束======================================")
    tree.write(xml_file, encoding='utf-8')  # 保存
    Run.update_xml()  # 头文件追加
    print('修改完成！！！！！！！！！！！！！！^x^')

if __name__ == '__main__':
 path= "F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改\BetterPrinterApp调试 - 副本\SoftConfig"  #''  # 目标文件夹
   #加载目录F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改
 path_AAAA="F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改\标准"   #标准文件夹
 os.chdir(path_AAAA) #移动至标准文件夹
 rootlist = []       #标准内容留存文件夹
 fs_name=main(path_AAAA).find_name(path_AAAA)  #加载标准文件内容
 print('找到标准文件',fs_name[0])
 setsetinput(path_AAAA,fs_name[0])    #标准内容加载
 sleep(1)
 print('\n')
#批量目标处理
 os.chdir(path)
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