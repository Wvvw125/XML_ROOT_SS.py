# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 13:56
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import xml.etree.ElementTree as ET
import os
from time import  sleep
#完善1，set写入 检测非空  2 写入前检测是否对应
aa ='alias'
vv ='value'
nname='name'
k='0'
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

 # 0 界面显示配置
 class face_display():
     def __init__(self):
         pass


     def O(self):
         root[0][0].set(vv, '0')  # x白边
         root[0][1].set(vv, '0')  # Y白边
         root[0][2].set(vv, '0')  # Z白边
         root[0][3].set(vv, '0')  # 白墨显示模式
         root[0][4].set(vv, '0')  # 墨量显示模式
         root[0][5].set(vv, '0')  # 列印显示模式
         root[0][6].set(vv, '0')  # Z电机显示显示模式
         root[0][7].set(vv, '0')  # 测高显示模式

     def set_colo_op(self):
         while True:
           for i in  range(0,len(root[0])):
             if root[0][i].attrib[nname]=='nInkCheckColor':
                for k in range(0,len(root[0][i])):
                     root[0][i][k].set(vv,str(k))
                break
             else:
               pass
           break
         print('墨量显示：修改完成：')

     def set_colo_InkCount(self):
         while True:
             for i in  range(0,len(root[0])):
                     if root[0][i].attrib[nname] == 'dbInkCount':
                        for a in range(0,len(root[0][i])):
                         root[0][i][a][0].set(vv,'0.000659557')
                         root[0][i][a][1].set(vv,'0.000942226')
                         root[0][i][a][2].set(vv,'0.001601783')
                         break
                     else:
                         pass
             print('墨点体积：修改完成：')
             break

     def set_InkCountColor(self):
        for i in range(0,len(root[0])):
                     if root[0][i].attrib[nname] == 'nInkCountColor':
                         for k in range(0,len(root[0][i])):
                             if  k<=6:
                                 root[0][i][k].set(vv, str(k))
                             elif 6<k<=9:
                                 root[0][i][k].set(vv, str(k-3))
                             elif 9<k<=13:
                                 root[0][i][k].set(vv, str(k-6))
                             else:
                                 pass
                     else:
                       pass
                     print('PRN墨量色续显示：修改完成：')



 # 1 打印参数配置
 class print_cfg():
     def __init__(self):
         pass

     def O(self):
         while True:
             for num in range(0, len(root[1])):
                 root[1][7][num].set(vv, '0')
             break
         print('白边模式置0完成：', root[1][7][0].attrib[aa],root[1][7][0].attrib[vv])

     def color(self):
        for i in range(0,len(root[1])):
            if root[1][i].attrib[nname]=='BP_CUT_INK_CONFIG':
                 for a in range(0, 16):
                     color_List = root[1][i][2][a]
                     color_List.set(vv, '100')  # 截墨墨量-修改键值
                 print('截墨，墨量显示：', root[1][i][2][15].attrib[vv])
                 # 墨量修改   [1][12][2][a]
                 # 1  [1]   ''<group name="BP_COMMON_CONFIG" alias="打印通用配置">    第二级   第二个配置
                 # 2  [12]                                                          第三级   第十三个配置
                 # 3  [2]                                                           第四级   第三个配置
                 # 4  [a]                                                           第五级   第a配置
            else:
              pass


     def Oset_clibration(self):
         for i in range (0,len(root[1])):
              if root[1][i].attrib[nname] == 'BP_CORRECT_PRINT_CONFIG':
                for a in range(0,3):
                 root[1][i][a].set(vv, '0')
                 for b in range(0,3):
                  root[1][i][3][a][b].set(vv,'0')
                  root[1][i][4][a][b].set(vv,'0')
                print('横向校准：归零', root[1][i][3][0][0].attrib[aa],root[1][i][3][0][0].attrib[vv])
                print('纵向校准：归零', root[1][i][4][0][0].attrib[aa],root[1][i][4][0][0].attrib[vv])
                print('微调校准：归零', root[1][i][0].attrib[aa],root[1][i][0].attrib[vv])
              else:
                  pass
 # 2 喷头参数配置
 class head_cfg():
     def __init__(self):
         pass

     def O_360_4C_6(self):  # 彩色
         for headNum in range(13, 76):
             root[2][headNum].set(vv,
                                  'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:3,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:1,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:1,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:2,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
         print('180系 head_0 喷头数据归零:', root[2][13].attrib)
         # 喷头参数配置

     def O_400_4C_8(self):  # 彩色
         for headNum in range(13, 76):
             root[2][headNum].set(vv,
                                  'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:2,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:3,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:0,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:0,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:3,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:2,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0')
         print('400系 head_0 喷头数据归零:', root[2][13].attrib)  # head_0 喷头数据归零   head_64

     def Oset_400_1c1w(self):
         while True:
             root[2][13].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:2,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:3,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:3,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:0,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             root[2][14].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:1400,hxrp:1400,hyp:800,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:8,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:8,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             break
         print('400系 1C1W head_0 喷头数据归零:', root[2][13].attrib)

     def Oset_400_2c2w(self):
         while True:
             root[2][13].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:2,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:3,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:3,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:0,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             root[2][14].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:2,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:3,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:3,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:0,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             root[2][15].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:1400,hxrp:1400,hyp:800,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:8,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:8,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             root[2][16].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:1400,hxrp:1400,hyp:800,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:8,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:8,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             break
         print('400系 2c2w head_0 喷头数据归零:', root[2][13].attrib)

     def Oset_180_w_o_s(self):
         while True:
             root[2][13].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:10,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:10,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:10,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:10,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:10,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:10,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             root[2][14].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:180,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             root[2][15].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:360,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:3,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:1,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:2,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:15,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:15,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             root[2][16].set(vv,
                             'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:540,hid:0,cphl_0:9,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:9,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:9,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:9,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:9,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:9,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             break
         print('180系 head_0 喷头数据归零:', root[2][13].attrib)
     #喷头参数置0为一号头数据
     def Oset_HeadOne_0(self):
         while True:
             if root[2][13].attrib[nname] == 'head_0':
                 data = root[2][13].attrib[vv]
                 for headNum in range(13, 76):
                     root[2][headNum].set(vv, data)
                 print('0-64 head_0 喷头数据归零为head 1:', root[2][13].attrib[vv])
                 break
             else:
                 print(root[2][13].attrib[aa], '配置错误，更新后重试')
                 sleep(5)

     #喷头参数置0为1和2号头数据
     def Oset_HeadOneTWO_0(self):
        while True:
            if root[2][13].attrib[nname] == 'head_0':
                 dataONe=root[2][13].attrib[vv]
                 dataTWO=root[2][14].attrib[vv]
                 for headNum in range(13, 76):
                    if headNum%2!=0:
                     root[2][headNum].set(vv,dataONe)
                    else:
                     root[2][headNum].set(vv, dataTWO)
                 break
                 print('0-64 head_0 喷头数据归零为head 1:', root[2][13].attrib[vv])
            else:
                print(root[2][13].attrib[aa], '配置错误，更新后重试')
                sleep(5)
     # 动作配置 白边配置 0-15

     #指定400系喷头归零
     def Oset_NunHead400_O(self,headNum,headNum2):
         a = 13 + headNum - 1
         for i in range(headNum,headNum2+1):
             root[2][a].set(vv,'hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:15,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:15,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:15,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:15,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:15,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:15,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
             a+=1
             print('400系 head_0 喷头数据归零:', root[2][a].attrib)  # head_0 喷头数据归零   head_64

     def SetuseHeadnum(self,head_headnum):
           #self.head_headnum=head_headnum
           root[2][9].set(vv,str(head_headnum))
           print('设置使用喷头数量:', root[2][9].attrib[aa], root[2][9].attrib[vv])
     def SetuseHeadNNNNN(self):
         def Addchange(num):
             if  root[2][num].attrib[vv].split(',')[6] =='hid:0':
                 NNb=root[2][num].attrib[vv].replace('hid:0','hid:1')
             else:
                 NNb=root[2][num].attrib[vv]
                 print('喷头%d已配置反向'%(num-12))
             return NNb
         while True:
             if root[2][13].attrib[nname] == 'head_0':
                 for headNum in range(13, 76):
                     root[2][headNum].set(vv,Addchange(headNum))
                 break
             else:
                 print(root[2][13].attrib[aa], '配置错误，更新后重试')
                 sleep(5)
         print('喷头装配方向:', root[2][13].attrib[aa], root[2][13].attrib[vv].split(',')[6])
 # 3 系统配置
 class system_cfg():
     def __init__(self):
         pass

     def O(self):
        if root[3][3].attrib[nname]=='BoardIp':
         for num in range(0, 31):
             root[3][3][num].set(vv, '0.0.0.0')
         print('板卡地址切换USB模式|',root[3][3][0].attrib[nname],';', root[3][3][0].attrib[aa],';',root[3][3][0].attrib[vv])
        else:
            print(root[3][3].attrib[aa],'配置错误')
            sleep(5)
            pass

     def ETH(self):
         while True:
            if root[3][3].attrib[nname] == 'BoardIp':
             root[3][3][0].set(vv, '192.168.0.2')
             break
             print('板卡地址切换千兆网|',root[3][3][0].attrib[nname],';', root[3][3][0].attrib[aa],';',root[3][3][0].attrib[vv])
            else:
             print(root[3][3].attrib[aa], '配置错误')
             sleep(5)
             pass

 # 4 板卡配置
 class board_cfg():
     def __init__(self):
         pass

     #最大行程
     def Maxtrip(self):
       while True:
         if root[4][9].attrib[nname]=='BP_STROKE_INFO':
           for a in  range(0,5):
            root[4][9][a].set(vv,'50000')
           print('最大行程',root[4][9][1].attrib[nname],root[4][9][1].attrib[aa],root[4][9][1].attrib[vv])
           break
         else:
           print(root[4][9].attrib[aa], '配置错误，更新后重试')
           sleep(5)
           pass

     #内存设置
     def setRam(self):
         def RAM512():
             while True:
                 for a in range(0, 2):
                     root[4][a].set(vv, '512')
                 print('内存大小', root[4][1].attrib[nname], root[4][1].attrib[aa], root[4][1].attrib[vv])
                 break

         def RAM256():
             while True:
                 for a in range(0, 2):
                     root[4][a].set(vv, '256')
                 print('内存大小', root[4][1].attrib[nname], root[4][1].attrib[aa], root[4][1].attrib[vv])
                 break

         while True:

             if root[4][1].attrib[nname] == 'nBoardMemory':
                 if root[3][3][0].attrib[vv] == '192.168.0.2':
                     RAM512()
                     break
                 elif root[2][9].attrib[vv] > '2' and root[2][0].attrib[vv] == '260':
                     if '7610' or '1600' in f_name2:
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

     #板卡支持喷头数量设置
     def setSupportHead(self):
         def Head8():
             while True:
                     root[4][5].set(vv, '8')
                     root[4][6].set(vv, '2')
                     print('板卡支持喷头数', root[4][5].attrib[nname], root[4][5].attrib[aa], root[4][5].attrib[vv])
                     break

         def Head4():
             while True:
                 root[4][5].set(vv, '4')
                 root[4][6].set(vv, '1')
                 print('板卡支持喷头数', root[4][5].attrib[nname], root[4][5].attrib[aa], root[4][5].attrib[vv])
                 break
         while True:
             if root[4][5].attrib[nname] == 'nBoardSupportHeadCnt' and root[4][6].attrib[nname] == 'nBoardFibreCnt'  :
                 if  root[2][9].attrib[vv] > '4' and root[2][0].attrib[vv] == '260':
                     if '7610' or '1600' in f_name2:
                         Head4()
                         break
                     else:
                         Head8()
                         break
                 elif root[2][9].attrib[vv] > '4' and root[2][0].attrib[vv] == '513':
                     Head8()
                     break
                 else:
                     Head4()
                     break
             else:
                 print(root[4][5].attrib[aa], '配置错误，更新后重试')
                 sleep(5)
                 pass
 # 5 速度配
 class speed_cfg():
     def __init__(self):
         pass

     def O(self):
         pass
     def setfomartting(self):
        while True:
         if root[5][3].attrib[nname] == 'BP_IC_MOTOR_SPEED_CONFIG' and root[5][4].attrib[nname] == 'BP_SI_MOTOR_SPEED_CONFIG':
          root[5][3][0].set(vv,'256')
          root[5][3][1].set(vv, '3000')
          root[5][4][0].set(vv, '256')
          root[5][4][1].set(vv, '3000')
          print('墨栈刮片速度格式化',root[5][3][1].attrib)
          break
         else:
           print(root[5][3].attrib[aa], '配置错误，更新后重试')
           sleep(5)
           pass
     def setMotorfomartting(self):
        while True:
         if root[5][0].attrib[nname] == 'BP_X_MOTOR_SPEED_CONFIG' and root[5][1].attrib[nname] == 'BP_Y_MOTOR_SPEED_CONFIG' and root[5][2].attrib[nname] == 'BP_Z_MOTOR_SPEED_CONFIG':
         #X
          root[5][0][0].set(vv,'3.20000')
          root[5][0][1].set(vv, '100')
          root[5][0][2].set(vv, '120')
          root[5][0][3].set(vv, '300')
          root[5][0][4].set(vv, '100')
          root[5][0][5].set(vv, '800')
          root[5][0][6].set(vv, '400')
          root[5][0][7].set(vv, '0')
          root[5][0][8].set(vv, '0.1')
          root[5][0][9][0].set(vv, '650')
          root[5][0][9][1].set(vv, '750')
          root[5][0][9][2].set(vv, '850')
          print('X速度格式化',root[5][0][0].attrib)
         #Y
          root[5][1][0].set(vv, '100')
          root[5][1][1].set(vv, '100')
          root[5][1][2].set(vv, '8')
          root[5][1][3].set(vv, '50')
          root[5][1][4][0].set(vv, '40')
          root[5][1][4][1].set(vv, '60')
          root[5][1][4][2].set(vv, '80')
          print('Y速度格式化', root[5][1][0].attrib)
         #Z
          root[5][2][0].set(vv,'500')
          root[5][2][1].set(vv, '0.5')
          root[5][2][2].set(vv, '5')
          print('Z速度格式化',root[5][2][0].attrib)

          break
         else:
           print(root[5][3].attrib[aa], '配置错误，更新后重试')
           sleep(5)
           pass
 # 6 功能配置
 class funtion_cfg():
     def __init__(self):
         pass

     def O(self):
         pass
 # 7 动作配置
 class action_cfg():
     def __init__(self):
         pass

     def O(self):
          for Num2 in range(0, len(root[7])):
             root[7][Num2].set(vv, '0')
          print('动作模式置0：', root[7][14].attrib)
          print('长度',len(root[7]))
 # 8 清洗配置
 class clean_cfg():
     def __init__(self):
         pass

     def UV(self):
         while True:
            if root[8][25].attrib[nname] == 'nPumpPort':
             root[8][25][0].set(vv, '8')
             root[8][25][1].set(vv, '7')
             root[8][25][2].set(vv, '6')
             root[8][25][3].set(vv, '5')
             root[8][25][4].set(vv, '4')
             root[8][25][5].set(vv, '3')
             print('UV 抽墨端口1：', root[8][25][0].attrib[aa], ';', root[8][25][0].attrib[vv])
             break
            else:
                print(root[8][25].attrib[aa], '配置错误，更新后重试')
                sleep(5)
                pass

     def not_UV(self):
         while True:
            if root[8][25].attrib[nname] == 'nPumpPort':
             root[8][25][0].set(vv, '10')
             root[8][25][1].set(vv, '9')
             root[8][25][2].set(vv, '8')
             root[8][25][3].set(vv, '7')
             root[8][25][4].set(vv, '6')
             root[8][25][5].set(vv, '5')
             root[8][25][6].set(vv, '4')
             root[8][25][7].set(vv, '3')
             print('not UV抽墨端口1：', root[8][25][0].attrib[aa], ';',root[8][25][0].attrib[vv])
             break
            else:
             print(root[8][25].attrib[aa], '配置错误，更新后重试')
             sleep(5)
             pass

     def Autoclean(self):
         while True:
            if root[8][26].attrib[nname] == 'BP_PRINT_CLEAN_CONFIG' :
             root[8][26][0].set(vv, '0')
             root[8][27][0].set(vv, '0')
             break
             print('自动清洗置0模式完成|', root[8][26][0].attrib[aa],';',root[8][26][0].attrib[vv])
            else:
                print(root[8][26].attrib[aa], '配置错误，更新后重试')
                sleep(5)
                pass

     def CleanActionSetFomartting(self):
         while True:
             if root[8][-1].attrib[nname] == 'dbXMotoPos':
                 root[8][-1][0].set(vv,'50')   #清洗小车位置
                 root[8][-1][1].set(vv, '100')
                 root[8][-1][2].set(vv, '150')
                 root[8][-1][3].set(vv, '200')
                 root[8][-1][4].set(vv, '250')

                 root[8][-2][0].set(vv,'1000')   #清洗小车位置
                 root[8][-2][1].set(vv, '1000')
                 root[8][-2][2].set(vv, '1000')
                 root[8][-2][3].set(vv, '1000')
                 root[8][-2][4].set(vv, '4000')

                 root[8][-8].set(vv, '0')   #清洗Z位置
                 root[8][-9].set(vv, '3')
                 root[8][-10].set(vv, '3')
                 root[8][-11].set(vv, '5')

                 root[8][-12].set(vv, '2001')   #清洗墨栈位置
                 root[8][-13].set(vv, '1000')
                 root[8][-14].set(vv, '2001')
                 root[8][-15].set(vv, '1000')
                 print('清洗动作各轴格式化完成！',root[8][-8].attrib[aa],root[8][-12].attrib[aa])
                 break
             else:
                 print(root[8][-1].attrib[aa], '配置错误，更新后重试')
                 sleep(5)
                 pass

 # 9 测试图配置
 class textp_cfg():
     def __init__(self):
         pass

     def O(self):
      while True:
       if root[9].attrib[nname] == 'BP_TEST_CFG_PRN_PARA':
          for Num1 in range(0, len(root[9])):
             root[9][Num1].set(vv, '0')
             if Num1 == 9:
                 for Num2 in range(0, len(root[9][9])):
                     root[9][9][Num2].set(vv, '0')
                 break
             else:
                 pass
                 break
          print('测试图模式置0：', root[9][0].attrib)  # 0-4   4有下级
          break
       else:
          print(root[9].attrib[aa], '配置错误，更新后重试')
          sleep(5)
          pass
     def B_16(self):
       while True:
        if root[9][9].attrib[nname] == 'nHeadsPos':
          for Num1 in range(0,8):
             if Num1==0:
                 root[9][4][Num1].set(vv, '0')
             elif Num1%2==0:
                 root[9][4][Num1].set(vv, '0')
             else:
                 root[9][4][Num1].set(vv, '16')
          break
          print('测试图模式置0：', root[9][4][3].attrib)
        else:
            print(root[9][9].attrib[aa], '配置错误，更新后重试')
            sleep(5)
            pass
     def OSet_TestPrn1(self):
         while True:
             if root[9][3].attrib[nname] == 'nVerDistanceTestFileType':
                 for Num1 in range(0,5):
                        root[9][Num1+3].set(vv, '1')
                 print('测试图模式置0：', root[9][0].attrib)  # 0-4   4有下级
                 break
             else:
                 print(root[9][3].attrib[aa], '配置错误，更新后重试')
                 sleep(5)
                 pass
 # 10 高速圆柱配置
 class speedcylinder_cfg():
     def __init__(self):
         pass

     def O(self):
         for num in range(0, 13):
             root[0][num].set(vv, '0')
         print('圆柱模式置0完成：', root[10][13].attrib[aa],root[10][13].attrib[vv])
 #$$固定动作修改

 class Fixed_action():
     def __init__(self):
         pass
     def Pactionset(self,a,b,c,d,e,f):
         root[0][0].set(vv, a)    # a  X白边
         root[0][1].set(vv, b)    #  b Y白边
         root[1][7][9].set(vv, c) #  c   Y白边运行模式 #
         root[7][8].set(vv,d)     # d 打印特种动作   #
         root[7][10].set(vv,e)    #  e  多份 小车复位不复位   #
         root[7][12].set(vv,f)    # f 多份不复位，下一份方向  #

  # a  X白边 b Y白边  c   Y白边运行模式 # d 打印特种动作 #  e  多份 小车复位不复位 # f 多份不复位，下一份方向  #
 # $$双工位动作修改$$
     def P2(self):
      root[0][0].set(vv,'2')     #X白边
      root[0][1].set(vv,'2')     #Y白边
      root[1][7][9].set(vv, '2') #Y白边运行模式 #
      root[7][8].set(vv, '2')    #打印特种动作   #
      root[7][10].set(vv, '1')  # 多份 小车复位不复位   #
      root[7][12].set(vv, '1')  # 多份不复位，下一份方向  #
      print('双工位动作修改完成：',root[7][8].attrib[aa],root[7][8].attrib[vv],root[1][7][9].attrib[aa],root[1][7][9].attrib[vv])
 # $$跑台动作修改$$
     def PT(self):
      root[0][0].set(vv,'2')     #X白边
      root[0][1].set(vv,'2')     #Y白边
      root[1][7][9].set(vv, '1') #Y白边运行模式 #
      root[7][8].set(vv, '1')    #打印特种动作   #
      root[7][10].set(vv, '1')  # 多份 小车复位不复位   #
      root[7][12].set(vv, '1')  # 多份不复位，下一份方向  #
      print('跑台机动作修改完成：',root[7][8].attrib[aa],root[7][8].attrib[vv],root[1][7][9].attrib[aa],root[1][7][9].attrib[vv])
 # $$椭圆动作修改$$
     def TY(self):
      root[0][0].set(vv,'2')     #X白边
      root[0][1].set(vv,'2')     #Y白边
      root[1][7][9].set(vv, '3') #Y白边运行模式 #
      root[7][8].set(vv, '3')    #打印特种动作   #
      root[7][10].set(vv, '1')  # 多份 小车复位不复位   #
      root[7][12].set(vv, '1')  # 多份不复位，下一份方向  #
      print('椭圆机动作修改完成：',root[7][8].attrib[aa],root[7][8].attrib[vv],root[1][7][9].attrib[aa],root[1][7][9].attrib[vv])
 # $$纸箱机动作修改$$
     def ZX(self):
      root[0][0].set(vv,'1')     #X白边
      root[0][1].set(vv,'1')     #Y白边
      root[1][7][9].set(vv, '4') #Y白边运行模式 #
      root[7][8].set(vv, '4')    #打印特种动作   #
      root[7][10].set(vv, '1')  # 多份 小车复位不复位   #
      root[7][12].set(vv, '1')  # 多份不复位，下一份方向  #
      print('纸箱机动作修改完成：',root[7][8].attrib[aa],root[7][8].attrib[vv],root[1][7][9].attrib[aa],root[1][7][9].attrib[vv])
# $$PB动作修改$$
     def PB(self):
         root[0][0].set(vv, '1')  # X白边
         root[0][1].set(vv, '1')  # Y白边
         root[1][7][9].set(vv, '0')  # Y白边运行模式 #
         root[7][8].set(vv, '0')  # 打印特种动作   #
         root[7][10].set(vv, '1')  # 多份 小车复位不复位   #
         root[7][12].set(vv, '1')  # 多份不复位，下一份方向  #
         print('平板动作修改完成：', root[7][8].attrib[aa], root[7][8].attrib[vv], root[1][7][9].attrib[aa],
               root[1][7][9].attrib[vv])

# $$写真机动作修改$$
     def Xzj(self):
         root[0][0].set(vv, '1')  # X白边
         root[0][1].set(vv, '0')  # Y白边
         root[1][7][9].set(vv, '0')  # Y白边运行模式 #
         root[7][8].set(vv, '0')  # 打印特种动作   #
         root[7][10].set(vv, '1')  # 多份 小车复位不复位   #
         root[7][12].set(vv, '1')  # 多份不复位，下一份方向  #
         print('写真机修改完成：', root[7][8].attrib[aa], root[7][8].attrib[vv], root[1][7][9].attrib[aa],
               root[1][7][9].attrib[vv])

#测试
     def text(self):
         pass

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
    Run.face_display().set_colo_op()  # 墨量 显示
    Run.print_cfg().color()           # 截墨 墨量 100
    Run.clean_cfg().Autoclean()       # 自动清洗归 0
  #  Run.speed_cfg().setMotorfomartting() #XYZ速度标准化
   # Run.speed_cfg().setfomartting()  # 格式化 墨栈 刮片速度
    Run.face_display().set_colo_InkCount()  #墨量体积
    Run.face_display().set_InkCountColor()  #墨量 PRN 色续
  #  Run.clean_cfg().CleanActionSetFomartting()#格式化清洗参数位置
   # Run.board_cfg().setRam()                  #板卡内存设置
  #  Run.board_cfg().setSupportHead()          #板卡支持喷头数量
    print('完成1')
    print("++++++++++++++++++++++++++++以上为默认设置+++++++++++++++++++++++++++++++++")
   # Run.face_display().O()   # 显示模式归0
  #  Run.print_cfg().O()      # 白边模式归零
    Run.head_cfg().Oset_HeadOne_0()  # 所有喷头设置 为1号头数据
   # Run.head_cfg().Oset_HeadOneTWO_0()     #所有喷头按照1  2喷头标准循环设置
 #   Run.head_cfg().SetuseHeadNNNNN()        #更改喷头装配方向
    Run.head_cfg().Oset_NunHead400_O(3,8)  #归零 第几个喷头参数（5-8）
  #  Run.head_cfg().SetuseHeadnum(2)      # 设置实际使用喷头数量
    Run.print_cfg().Oset_clibration()    # 双向步进校准归零1
  #  Run.action_cfg().O()  # 动作设置归零
# Run.board_cfg().Maxtrip()  # 最大行程设置
  #  Run.system_cfg().O()     # USB
 #   Run.system_cfg().ETH()  # 网口地址
 #   Run.clean_cfg().not_UV()  # 清洗接口  UV 8 7 6 5  notUV 10 9 8 7
    #   Run.head_cfg().Oset_180_w_o_s()  #喷头数据归零
  #  Run.textp_cfg().O()       # 测试图归 0
  #  Run.textp_cfg().B_16()    # 测试图 并排
  #  Run.textp_cfg().OSet_TestPrn1()#打印文件测试图置1
    print('---------------------------------特种机型修改---特种动作-------------------------------')
    # a  X白边 b Y白边  c   Y白边运行模式 # d 打印特种动作 #  e  多份 小车复位不复位 # f 多份不复位，下一份方向  #
    #                           （a,   b,  c,  d,  e,   f）
   # Run.Fixed_action().Pactionset('1','0','0','0','0','0')
#    Run.Fixed_action().P2()  #双工位
#    Run.Fixed_action().ZX()  #纸箱机
#    Run.Fixed_action().PB() #平板机
 #   Run.Fixed_action().Xzj()  #写真机
#    Run.Fixed_action().TY()  #椭圆机
    #Run.Fixed_action().PT()  #跑台机
    print("============================置零修改结束======================================")
    tree.write(xml_file, encoding='utf-8')  # 保存
    Run.update_xml()  # 头文件追加
    print('修改完成！！！！！！！！！！！！！！^x^')

if __name__ == '__main__':
 path= "I:\客户测试集\新建文件夹 (2)\BetterPrinterApp_TX800\SoftConfig"  #'E:\2.0打印软件2022年1月\G5I\SoftConfig'  # 目标文件夹
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