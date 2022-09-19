# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 13:56
# -*- coding: utf-8 -*-
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import xml.etree.ElementTree as ET
import os
from time import  sleep
import  requests
import  random
from  hashlib import  md5
'''
1 加载外部标题 全部行数
2 检测内部底行
3 每个底行加一行内容
4 内容取底行最后一行内容
5 连接翻译软件，修改最后一行内容
6 完成第三语言翻译配置
'''
#完善1，set写入 检测非空  2 写入前检测是否对应
aa ='alias'
vv ='value'
nname='name'
class main(object):

 def __init__(self,path):
    self.path=path
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
 def root1(self,path,f_name1):
       global  tree,root,xml_file
       xml_file = path +'\\'+f_name1
       tree = ET.parse(xml_file)
       root = tree.getroot()
    #   return root,tree,xml_file
 sleep(1)

 class add_langue():
     def __init__(self):
         pass
     #翻译
     def translate(self,text1,Tolang):
         sleep(0.05)
         appid = '20220814001306572'
         appkey = '43ns40APSGjNedq4nvAg'
         from_lang = 'zh'
         to_lang = Tolang
         query = text1

         def make_md5(s, encoding='utf-8'):
             return md5(s.encode(encoding)).hexdigest()

         salt = random.randint(32768, 65536)
         sign = make_md5(appid + query + str(salt) + appkey)

         url = 'https://fanyi-api.baidu.com/api/trans/vip/translate'
         headers = {
             'Content-Type': 'application/x-www-form-urlencoded'}
         data = {'q': query,
                 'from': from_lang,
                 'to': to_lang,
                 'appid': appid,
                 'salt': salt,
                 'sign': sign}
         respontext = requests.post(url=url, params=data, headers=headers).json()
         trans_date=(respontext["trans_result"][0]['dst'])
         return  trans_date

         # 增加行数
     def add_1(self,x,y):
             a = ET.Element('valu')
             b = ET.SubElement(a, 'items')
             b.text = '\n'
             #    c=ET.SubElement(a,'   ')
             #    root[1][0].append(c)
             root[x][y].append(b)
         #    root[0][].set('vale',"4")

     def add_content(self,wanttolang):
             for num1 in range(1,22):
                 for num2 in range(0,len(root[num1])):
                     self.add_1(num1,num2)
                     num3=len(root[num1][num2])-1
                     root[num1][num2][num3].set('id',wanttolang)
                     text_date=root[num1][num2][0].attrib['text']
                     text_date2 = text_date.split('}')[-1]
                     text_date3 = text_date.split(text_date2)[0]
                     if  '}' in text_date:
                         translation_date = self.translate(text_date2, wanttolang)
                         root[num1][num2][num3].set('text',text_date3+translation_date)
                     else:
                         translation_date=self.translate(text_date,wanttolang)
                         root[num1][num2][num3].set('text',translation_date)
                     print('完成翻译：',text_date)
     def pprint(self):
         pass
       #  print(root[1][0].__len__())

 # 追加头文件
 def update_xml(self):
     out = open(xml_file, 'wb')
     out.write(b'<?xml version="1.0" encoding="UTF-8" standalone = "yes" ?>\n')
     tree.write(out, encoding='UTF-8', xml_declaration=False)
     out.close()

class setset(object):
 def __init__(self, path,f_name1):
    self.path = path
    self.f_name1=f_name1
    Run = main(path)
    Run.root1(path,f_name1)
    #    Root= Run.root1()  # 加载数据
    #    root = Root[0]
    #    tree = Root[1]
    #    xml_file = Root[2]  # #格式化数据 #数据化   #文件名
    print("===========================开始修改=======================================")
    Run.add_langue().add_content('ara') #翻译    报错  de   spa   fra
    #Run.add_langue().pprint()
    print("++++++++++++++++++++++++++++以上为默认设置+++++++++++++++++++++++++++++++++")

    print("============================置零修改结束======================================")
    tree.write(xml_file, encoding='utf-8')  # 保存
    Run.update_xml()  # 头文件追加
    print('修改完成！！！！！！！！！！！！！！^x^')

if __name__ == '__main__':
 path= "I:\语言更改测试\\032-%停止\System"  #'E:\2.0打印软件2022年1月\G5I\SoftConfig'  # 目标文件夹
   #加载目录F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改
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