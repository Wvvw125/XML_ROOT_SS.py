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
    url = 'https://www.shicimingju.com/book/sanguoyanyi.html'
    url2='https://www.shicimingju.com/book/sanguoyanyi/%d.html'

    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
   # page_text=requests.get(url=url,headers=headers).content   #有效
    page_text = requests.get(url=url, headers=headers).text.encode('ISO-8859-1')  #有效  .text乱码

    #在首页中解析章节的标题和详情页的url
    #1.实例化BeautifulSoup对象，需要将页面源码数据加载到该对象中
    soup=BeautifulSoup(page_text,'lxml')
    #解析章节标题和详情页url
    #print(soup.find('div',calss_='book-mulu'))
    li_list=(soup.select('.book-mulu>ul>li'))
    fp=open('./sangguo.txt','w',encoding='utf-8')
    for li in li_list:
        title=li.a.string
        detail_url='https://www.shicimingju.com'+li.a['href']
        #对详情页发起请求，解析出章节内容
        detail_page_text=requests.get(url=detail_url,headers=headers).content
        detail_soup = BeautifulSoup(detail_page_text, 'lxml')
        div_tag=detail_soup.find('div',class_='chapter_content')
        content=div_tag.text
        fp.write(title+':'+content+'\n')
        print(title,'爬取成功！！！')

