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
    #需求跑台机 双白边，跑台白边，跑台动作
    #Y白边
    root[0][1].set('value','2')
    print(root[0][1].attrib)
    #X白边
    root[0][0].set('value','2')
    print(root[0][0].attrib)
    #白边配置-双工位
    root[1][7][9].set('value','2')
    print(root[1][7][9].attrib)
    #动作-双工位
    root[7][7].set('value', '2')
    print(root[7][7].attrib)
    tree.write(xml_file,encoding='utf-8')  #保存
