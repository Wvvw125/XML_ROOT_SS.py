# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
from bs4 import BeautifulSoup
import translation
if __name__ == '__main__':
    #将本地的html文档中的数据加载到该对象中
    fp = open('./test.html','r',encoding='utf-8')
    soup = BeautifulSoup(fp,'lxml')
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
    print(soup.select('.tang>ul a')[0]['href'])  # 空格表示多个层级

    '''  if not os.path.exists('./qiutulibs'):
        os.mkdir('./qiutulibs')
    url = 'https://www.qiushibaike.com/imgrank/page/%d/'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
'''