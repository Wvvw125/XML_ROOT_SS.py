# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
from bs4 import BeautifulSoup
import translation
if __name__ == '__main__':
    #将本地的html文档中的数据加载到该对象中
    fp = open('./Xp600-1H.xml','r',encoding='utf-8')
    soup = BeautifulSoup(fp,'lxml')
#print(soup.select('group param')[2])
#print(soup.select('group>group param')[5])
    print(soup.select('group group group param')[0])
# print(soup.find('group'))  #有效
# print(soup.group)    # 有效
# print(soup.find_all('param'))   #有效
print('''__________________________________________________''')
print(soup.select('.BP_UI_CONFIG'))
print(soup.find('group', name_="BP_PRINTER_CONFIG", alias="打印配置"))
   # print(soup.find('group',name_='BP_PRINTER_CONFIG', alias_="打印配置"))  # (soup.div)
    #print(soup.select('.BP_PRINTER_CONFIG>group>param'))
print('''+++++++++++++++++++++++++++++++++++++++++++++++++++++''')
'''________________________________________________'''
    # print(soup)
    # print(soup.a)#返回第一次出现的a标签
    # print(soup.div)
    #find ('tagName)等同于soup.div
    #属性定位
    #print(soup.find('div')) # (soup.div)
    #print(soup.find('div',class_='song'))
    # print(soup.find_all('a'))#返回符合要求的所有标签（列表）
    # print(soup.select('.tang'))  #返回时复数
    # print(soup.select('.tang>ul>li>a')[0])
  #  print(soup.select('.tang>ul a')[0].get_text())  #空格表示多个层级
   # print(soup.select('.tang>ul a')[0]['href'])  # 空格表示多个层级
'''________________________________________________________'''
'''  if not os.path.exists('./qiutulibs'):
        os.mkdir('./qiutulibs')
    url = 'https://www.qiushibaike.com/imgrank/page/%d/'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
'''
'''_____________________________________________________________'''