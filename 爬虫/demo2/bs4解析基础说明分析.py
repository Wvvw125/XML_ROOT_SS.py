# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
# 需求爬取糗事百科中糗图板块下所有的糗图
import requests
import re
import os

if __name__ == '__main__':
    if not os.path.exists('./qiutulibs'):
        os.mkdir('./qiutulibs')
    url = 'https://www.qiushibaike.com/imgrank/page/%d/'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'
    }
    print('aa')

    ''''"""bs4 进行数据解析
  -数据解析的原理：
  -1 标签定位
  -2.提取标签，标签属性中存储的数据值
  -bs4 数据解析的原理：
  -1. 实例化 一个beautiful Soup对象，并且将页面源码数据加载到该对象中
  -2.通过调用beatifulSoup对象中相关的属性或者方法进行标签定位和解析
  -如何实例化beautifulSoup对象：
    -from bs4 import beautifulsoup
      -对象的实例化：
      - 将本地的html 文档中数据加载到该对象中
      fp = open('./test.html','r',encoding='utf-8')
    soup = BeautifulSoup(fp,'lxml')
    print(soup)
      -将互联网上获取的页面源码加载到该对象中
      page_text=response.text
      soup=BeautifulSoup(page_text,'lxml')
    -提供的用于数据解析的方法和属性:
    soup.tagName,返回文档中第一次出现的tagName的标签
      # print(soup.a)#返回第一次出现的a标签
    # print(soup.div)
    #find ('tagName)等同于soup.div
    #属性定位
    #print(soup.find('div')) # (soup.div)
    print(soup.find('div',class_='song'))
    print(soup.find_all('tagName'))#返回符合要求的所有标签（列表）
-select
    - select('某种选择器（id,class,标签...选择器）'))   返回一个列表。#返回时复数
   -层级选择器：  
    select('.tang>ul>li>a');   >表示的是一个层级  
    soup.select('.tang>ul a')   空格表示多个层级
    -获取标签之间的文本数据；
    soup.a.text/string/get_text()
    - text/get_text()获取标签中所有的内容 、可以夸层级，非直系
    -string 只获取该标签下面直系的文本内容
    -获取标签中的属性值；
    soup.a['href']
     """'''