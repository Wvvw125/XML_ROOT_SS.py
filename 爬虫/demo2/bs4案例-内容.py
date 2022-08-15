# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
# 需求爬取三国演义小说，所有的章节标题，和内容
import requests
import re
import os
from bs4 import BeautifulSoup

if __name__ == '__main__':
    #对首页的数据进行爬取
    if not os.path.exists('./qiutulibs'):
        os.mkdir('./qiutulibs')
    url = 'https://www.shicimingju.com/book/sanguoyanyi.html'
    url2='https://www.shicimingju.com/book/sanguoyanyi/%d.html'

    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    page_text=requests.get(url=url,headers=headers).content

    #在首页中解析章节的标题和详情页的url
    #1.实例化BeautifulSoup对象，需要将页面源码数据加载到该对象中
    soup=BeautifulSoup(page_text,'lxml')
    #解析章节标题和详情页
    #print(soup.find('div',calss_='book-mulu'))
    list=(soup.select('.book-mulu>ul>li'))
    list2=[]
    list3=[]
    for pageNumb in range(0,120):
        list2.append(list[pageNumb].text)
        new_url=format(url2%(pageNumb+1))
        page_text2=requests.get(url=new_url,headers=headers).content
        list3.append(BeautifulSoup(page_text2, 'lxml').select('.chapter_content')[0].text)
        print(list3)




