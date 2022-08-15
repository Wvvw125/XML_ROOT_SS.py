# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
# -*-coding:utf-8-*-
import xml.etree.ElementTree as ET
import os
from time import  sleep

path = 'F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改'
f_name=os.listdir(path)
for Nam in f_name:
    if '.xml' in Nam:
       print('找到配置文件，开始修改配置。文件名为：',Nam,'...')
       xml_file = path + '\\' + Nam
       tree = ET.parse(xml_file)
       root = tree.getroot()
    else:
        print('目标为其他文件，请添加配置文件后重试！！！！')
sleep(1)
#0 界面显示配置
class face_display():
 def __init__(self):
     pass
 def O(self):
     root[0][0].set('value','0') #x白边
     root[0][1].set('value','0') #Y白边
     root[0][2].set('value','0') #Z白边
     root[0][3].set('value','0')#白墨显示模式
     root[0][4].set('value','0')#墨量显示模式
     root[0][5].set('value','0')#列印显示模式
     root[0][6].set('value','0')#Z电机显示显示模式
     root[0][7].set('value','0')#测高显示模式
 def set_colo_op(self):
     while True:
         root[0][11][0].set('value', '0')
         root[0][11][1].set('value', '1')
         root[0][11][2].set('value', '2')
         root[0][11][3].set('value', '3')
         root[0][11][4].set('value', '4')
         root[0][11][5].set('value', '5')
         root[0][11][6].set('value', '6')
         root[0][11][7].set('value', '7')
         break
     print('墨量显示：修改完成：')
#1 打印参数配置
class print_cfg():
 def __init__(self):
    pass
 def O(self):
    while True:
        for num in range(0,16):
            root[1][7][num].set('value','0')
        break
    print('白边模式置0完成：',root[1][7][0].attrib)
 def color(self):
    for a in range(0,16):
     color_List = root[1][12][2][a]
     color_List.set('value','100')  #截墨墨量-修改键值
    print('截墨，墨量显示：',root[1][12][2][15].attrib)
    #墨量修改   [1][12][2][a]
    # 1  [1]   ''<group name="BP_COMMON_CONFIG" alias="打印通用配置">    第二级   第二个配置
    # 2  [12]                                                          第三级   第十三个配置
    # 3  [2]                                                           第四级   第三个配置
    # 4  [a]                                                           第五级   第a配置
#2 喷头参数配置
class head_cfg():
 def __init__(self):
        pass
 def O_360_4C_6(self):       #彩色
     for headNum in range(13, 76):
      root[2][headNum].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:3,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:1,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:1,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:2,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
     print('180系 head_0 喷头数据归零:', root[2][13].attrib)
     #喷头参数配置
 def O_400_4C_8(self):      #彩色
  for headNum in range(13,76):
     root[2][headNum].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:2,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:3,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:0,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:0,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:3,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:2,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0')
  print('400系 head_0 喷头数据归零:', root[2][13].attrib)  # head_0 喷头数据归零   head_64

 def Oset_400_1c1w(self):
    while True:
     root[2][13].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:2,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:3,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:3,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:0,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
     root[2][14].set('value','hi:0,hio:1,jws:0,hxlp:1400,hxrp:1400,hyp:800,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:8,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:8,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
     break
    print('400系 1C1W head_0 喷头数据归零:', root[2][13].attrib)
 def Oset_400_2c2w(self):
    while True:
        root[2][13].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:2,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:3,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:3,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:0,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
        root[2][14].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:1,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:2,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:3,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:3,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:2,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:1,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:0,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
        root[2][15].set('value','hi:0,hio:1,jws:0,hxlp:1400,hxrp:1400,hyp:800,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:8,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:8,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
        root[2][16].set('value','hi:0,hio:1,jws:0,hxlp:1400,hxrp:1400,hyp:800,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:8,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:8,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
        break
    print('400系 2c2w head_0 喷头数据归零:', root[2][13].attrib)


 def Oset_180_w_o_s(self):
   while True:
      root[2][13].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:0,cphl_0:10,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:10,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:10,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:10,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:10,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:10,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
      root[2][14].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:180,hid:0,cphl_0:8,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:8,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:8,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:8,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:8,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:8,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
      root[2][15].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:360,hid:0,cphl_0:0,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:3,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:1,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:2,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:15,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:15,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
      root[2][16].set('value','hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:540,hid:0,cphl_0:9,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:9,hlvg_1:0,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:9,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:9,hlvg_3:0,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:9,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:9,hlvg_5:0,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:15,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:15,hlvg_7:0,hlxlo_7:0,hlxro_7:0,hlyo_7:0,')
      break
   print('180系 head_0 喷头数据归零:', root[2][13].attrib)


    # 动作配置 白边配置 0-15
#3 系统配置
class system_cfg():
    def __init__(self):
        pass
    def O(self):
        pass
#4 板卡配置
class board_cfg():
    def __init__(self):
        pass

    def O(self):
        for num in  range(0,31):
            root[3][3][num].set('value','0.0.0.0')
        print('板卡地址切换USB模式；',root[3][3][0].attrib)
    def ETH(self):
        while True:
         root[3][3][0].set('value','192.168.0.2')
         break
        print('板卡地址切换千兆网：',root[3][3][0].attrib)
#5 速度配
class speed_cfg():
    def __init__(self):
        pass

    def O(self):
        pass
#6 功能配置
class funtion_cfg():
 def __init__(self):
     pass
 def O(self):
     pass
#7 动作配置
class action_cfg():
 def __init__(self):
   pass
 def O(self):
    for Num2 in range(0,14):
        root[7][Num2].set('value','0')
    print('动作模式置0：',root[7][14].attrib)
#8 清洗配置
class clean_cfg():
 def __init__(self):
     pass
 def UV(self):
     while True:
         root[8][25][0].set('value','8')
         root[8][25][1].set('value','7')
         root[8][25][2].set('value','6')
         root[8][25][3].set('value','5')
         root[8][25][4].set('value','4')
         root[8][25][5].set('value','3')
         break
     print('UV 抽墨端口1：',root[8][25][0].attrib)
 def not_UV(self):
     while True:
         root[8][25][0].set('value','10')
         root[8][25][1].set('value', '9')
         root[8][25][2].set('value', '8')
         root[8][25][3].set('value', '7')
         root[8][25][4].set('value', '6')
         root[8][25][5].set('value', '5')
         root[8][25][6].set('value', '4')
         root[8][25][7].set('value', '3')
         break
     print('not UV抽墨端口1：',root[8][25][0].attrib)
 def Autoclean(self):
     while True:
         root[8][26][0].set('value','0')
         root[8][27][0].set('value','0')
         break
     print('自动清洗置0模式完成',root[8][26][0].attrib)
#9 测试图配置
class textp_cfg():
 def __init__(self):
        pass
 def O(self):
    for Num1 in range(0,5):
     root[9][Num1].set('value','0')
     if Num1 ==4:
        for Num2 in range(0,8):
         root[9][4][Num2].set('value','0')
     else:
         pass
    print('测试图模式置0：',root[9][0].attrib)  #0-4   4有下级
#10 高速圆柱配置
class speedcylinder_cfg():
    def __init__(self):
        pass
    def O(self):
        for num in range(0,13):
            root[0][num].set('value','0')
        print('圆柱模式置0完成：',root[10][13].attrib)
#xml头文件修改
def update_xml():
            out = open(xml_file, 'wb')
            out.write(b'<?xml version="1.0" encoding="UTF-8" standalone = "yes" ?>\n')
            tree.write(out, encoding='UTF-8', xml_declaration=False)
            out.close()

if __name__ == '__main__':
  sleep(1)
  print('+++++++++++++++++++++++++++++++++++++++固定置0，设置配置++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++')
  print_cfg().color()              # 截墨墨量 置100    ok
  clean_cfg().not_UV()             # 清洗墨泵端口设置   ok
  clean_cfg().Autoclean()          # 自动清洗端口置0    ok
  face_display().set_colo_op()     # 墨量显示置1-7      ok
  sleep(1)
  print('==========================================临时配置调整============================================================')
  board_cfg().ETH()                # 板卡地址模式切换
  print_cfg().O()                 #白边模式置0      ok
  #    textp_cfg().O()                 #测试图模式置0
  #    action_cfg().O()                #动作模式置0
  head_cfg().O_400_4C_8()   #喷头参数置0
  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^我是一条分界线^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^')
  tree.write(xml_file,encoding='utf-8')  #保存
  update_xml()           #修改头文件
  sleep(1)
  print('进度完成！！！')


