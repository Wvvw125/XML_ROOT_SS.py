# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 13:56
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import xml.etree.ElementTree as ET
import os
from time import  sleep

aa ='alias'
vv ='value'
nname='name'
class main(object):

 def __init__(self,path):
    self.path=path
 def find_name(self):
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
 def root1(self,f_name1):
       global  tree,root,xml_file
       xml_file = path +'\\'+f_name1
       tree = ET.parse(xml_file)
       root = tree.getroot()
       return root,tree,xml_file
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
             root[0][11][0].set(vv, '0')
             root[0][11][1].set(vv, '1')
             root[0][11][2].set(vv, '2')
             root[0][11][3].set(vv, '3')
             root[0][11][4].set(vv, '4')
             root[0][11][5].set(vv, '5')
             root[0][11][6].set(vv, '6')
             root[0][11][7].set(vv, '7')
             break
         print('墨量显示：修改完成：')
 # 1 打印参数配置
 class print_cfg():
     def __init__(self):
         pass

     def O(self):
         while True:
             for num in range(0, 16):
                 root[1][7][num].set(vv, '0')
             break
         print('白边模式置0完成：', root[1][7][0].attrib[aa],root[1][7][0].attrib[vv])

     def color(self):
         for a in range(0, 16):
             color_List = root[1][12][2][a]
             color_List.set(vv, '100')  # 截墨墨量-修改键值
         print('截墨，墨量显示：', root[1][12][2][15].attrib[vv])
         # 墨量修改   [1][12][2][a]
         # 1  [1]   ''<group name="BP_COMMON_CONFIG" alias="打印通用配置">    第二级   第二个配置
         # 2  [12]                                                          第三级   第十三个配置
         # 3  [2]                                                           第四级   第三个配置
         # 4  [a]                                                           第五级   第a配置
     def Oset_clibration(self):
        for a in range(0,3):
         root[1][13][a].set(vv, '0')
         for b in range(0,3):
          root[1][13][3][a][b].set(vv,'0')
          root[1][13][4][a][b].set(vv,'0')
        print('横向校准：归零', root[1][13][3][0][0].attrib[aa],root[1][13][3][0][0].attrib[vv])
        print('纵向校准：归零', root[1][13][4][0][0].attrib[aa],root[1][13][4][0][0].attrib[vv])
        print('微调校准：归零', root[1][13][0].attrib[aa],root[1][13][0].attrib[vv])

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
         data=root[2][13].attrib[vv]
         for headNum in range(13, 76):
             root[2][headNum].set(vv,data)
         print('0-64 head_0 喷头数据归零为head 1:', root[2][13].attrib[vv])
        # 动作配置 白边配置 0-15
 # 3 系统配置
 class system_cfg():
     def __init__(self):
         pass

     def O(self):
         pass
 # 4 板卡配置
 class board_cfg():
     def __init__(self):
         pass

     def O(self):
         for num in range(0, 31):
             root[3][3][num].set(vv, '0.0.0.0')
         print('板卡地址切换USB模式|',root[3][3][0].attrib[nname],';', root[3][3][0].attrib[aa],';',root[3][3][0].attrib[vv])

     def ETH(self):
         while True:
             root[3][3][0].set(vv, '192.168.0.2')
             break
         print('板卡地址切换千兆网|',root[3][3][0].attrib[nname],';', root[3][3][0].attrib[aa],';',root[3][3][0].attrib[vv])
 # 5 速度配
 class speed_cfg():
     def __init__(self):
         pass

     def O(self):
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
         for Num2 in range(0, 14):
             root[7][Num2].set(vv, '0')
         print('动作模式置0：', root[7][14].attrib)
 # 8 清洗配置
 class clean_cfg():
     def __init__(self):
         pass

     def UV(self):
         while True:
             root[8][25][0].set(vv, '8')
             root[8][25][1].set(vv, '7')
             root[8][25][2].set(vv, '6')
             root[8][25][3].set(vv, '5')
             root[8][25][4].set(vv, '4')
             root[8][25][5].set(vv, '3')
             break
         print('UV 抽墨端口1：', root[8][25][0].attrib[aa],';',root[8][25][0].attrib[vv])

     def not_UV(self):
         while True:
             root[8][25][0].set(vv, '10')
             root[8][25][1].set(vv, '9')
             root[8][25][2].set(vv, '8')
             root[8][25][3].set(vv, '7')
             root[8][25][4].set(vv, '6')
             root[8][25][5].set(vv, '5')
             root[8][25][6].set(vv, '4')
             root[8][25][7].set(vv, '3')
             break
         print('not UV抽墨端口1：', root[8][25][0].attrib[aa], ';',root[8][25][0].attrib[vv])

     def Autoclean(self):
         while True:
             root[8][26][0].set(vv, '0')
             root[8][27][0].set(vv, '0')
             break
         print('自动清洗置0模式完成|', root[8][26][0].attrib[aa],';',root[8][26][0].attrib[vv])
 # 9 测试图配置
 class textp_cfg():
     def __init__(self):
         pass

     def O(self):
         for Num1 in range(0, 5):
             root[9][Num1].set(vv, '0')
             if Num1 == 4:
                 for Num2 in range(0, 8):
                     root[9][4][Num2].set(vv, '0')
             else:
                 pass
         print('测试图模式置0：', root[9][0].attrib)  # 0-4   4有下级
     def B_16(self):
         for Num1 in range(0,8):
             if Num1==0:
                 root[9][4][Num1].set(vv, '0')
             elif Num1%2==0:
                 root[9][4][Num1].set(vv, '0')
             else:
                 root[9][4][Num1].set(vv, '16')
         print('测试图模式置0：', root[9][4][3].attrib)
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
 # $$双工位动作修改$$
     def P2(self):
      root[0][0].set(vv,'2')     #X白边
      root[0][1].set(vv,'2')     #Y白边
      root[1][7][9].set(vv, '2') #Y白边运行模式 #
      root[7][8].set(vv, '2')    #打印特种动作   #
      root[7][9].set(vv, '1')  # 多份 小车复位不复位   #
      root[7][11].set(vv, '1')  # 多份不复位，下一份方向  #
      print('双工位动作修改完成：',root[7][8].attrib[aa],root[7][8].attrib[vv],root[1][7][9].attrib[aa],root[1][7][9].attrib[vv])
 # $$椭圆机动作修改$
      def TY(self):
        pass
 # $$ 写真机
      def XZ(self):
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
    Run.root1(f_name1)
    #    Root= Run.root1()  # 加载数据
    #    root = Root[0]
    #    tree = Root[1]
    #    xml_file = Root[2]  # #格式化数据 #数据化   #文件名

    print("===========================开始修改=======================================")
    Run.face_display().set_colo_op()  # 墨量显示
    Run.print_cfg().color()  # 截墨 墨量 100
    Run.clean_cfg().Autoclean()  # 自动清洗归 0
    Run.head_cfg().Oset_HeadOne_0()  # 所有喷头设置 为1号头数据
    print('完成1')
    print("++++++++++++++++++++++++++++以上为默认设置+++++++++++++++++++++++++++++++++")
    #   machina=input('请输入机型（PT,TY,XZ，P2）：')
    #   POT=input('请输入（0UV，UV）：')
    #
    #
    #   Run.face_display().O()   # 显示模式归0
    #   Run.print_cfg().O()      # 白边模式归零
    #   Run.action_cfg().O()     # 动作模式
    #   Run.board_cfg().O()      # USB
    Run.board_cfg().ETH()  # 网口地址
    Run.clean_cfg().UV()  # 清洗接口
    #   Run.head_cfg().Oset_180_w_o_s()  #喷头数据归零
    #   Run.textp_cfg().O()       # 测试图归 0
    #   Run.textp_cfg().B_16()    # 测试图 并排
    print("============================置零修改结束======================================")
    print("固定动作修改")
    print('截墨，墨量显示：', root[9][4].attrib)
    tree.write(xml_file, encoding='utf-8')  # 保存
    Run.update_xml()  # 头文件追加
    print('修改完成！！！！！！！！！！！！！！^x^')
if __name__ == '__main__':
 path= "F:\售后体系库\……【客户软件库】……\V2.0平台\国内\美爵_黄建国\BetterPrinterApp_TX800_onepass\SoftConfig"  #'E:\2.0打印软件2022年1月\G5I\SoftConfig'  # 目标文件夹
   #加载目录
 f_name=main(path).find_name()
 print('可修改配置名：',f_name)
 print('可修改配置数量：',len(f_name))
 while True:
    setNUM = int(input('请输入修改个数（1，任意数值修改全部）'))   #设置  修改文件个数
 #设置 目标个数文件
    if setNUM == 1:
        setint = int(input('请输入第几个：'))
        f_name2 = f_name[setint - 1]  # [num]
        print("开始修改配置", f_name2)
        setset(path,f_name2)


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