# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
# -*-coding:utf-8-*-
import xml.etree.ElementTree as ET
if __name__ == '__main__':
    Name='Xp600-1H2.xml'
    path='E:\\PycharmProjects\\爬虫\\第三章'
    xml_file =path+'\\'+Name
    tree = ET.parse(xml_file)
    root=tree.getroot()
    #墨量修改   [1][12][2][a]
    # 1  [1]   ''<group name="BP_COMMON_CONFIG" alias="打印通用配置">    第二级   第二个配置
    # 2  [12]                                                          第三级   第十三个配置
    # 3  [2]                                                           第四级   第三个配置
    # 4  [a]                                                           第五级   第a配置
    for a in range(0,16):
     color_List = root[1][12][2][a]
     color_List.set('value','100')  #修改键值
    root[0][0].set('value','2') #x白边
    print(root[0][0].attrib)
    root[0][1].set('value','2') #Y白边
    print(root[0][1].attrib)
    root[0][2].set('value','1') #Z白边
    print(root[0][2].attrib)
    root[0][3].set('value','0')#白墨显示模式
    print(root[0][3].attrib)
    root[0][4].set('value','0')#墨量显示模式
    print(root[0][4].attrib)
    root[0][5].set('value','0')#列印显示模式
    print(root[0][5].attrib)
    root[0][6].set('value','1')#Z电机显示显示模式
    print(root[0][6].attrib)
    root[0][7].set('value','0')#测高显示模式
    print(root[0][7].attrib)
    print(root[0][8].attrib)
    tree.write(xml_file,encoding='utf-8')  #保存
