# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
# 需求爬取糗事百科中糗图板块下所有的糗图
import requests
import re
import os

if __name__ == '__main__':
    url = 'https://www.qiushibaike.com/imgrank/page/%d/'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    '''-xpath解析原理
          -1实例化一个etree的对象，且需要将被解析的页面源码数据加载到该对象中。
          -2.调用etree对象中 的xptah方法结合着xpatg表达式实现标签的定位和内容的捕获。
         
        -环境安装：
          -pip install lxml
        -如何实例化一个etree对象:from lxml import etree
          -1.将本地的html文档中的源码数据加载到etree对象中
            eree.parse(filepath)
          -2.可以从互联网上获取的源码数据加载到该对象中
            etree.HTML('page_text')
          -xpath('xpath表达式')
    '''