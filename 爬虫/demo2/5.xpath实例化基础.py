# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
# -*-coding:utf-8-*-
# 需求爬取糗事百科中糗图板块下所有的糗图
from lxml import etree
if __name__ == '__main__':
   # parser=etree.HTMLParser(encoding='utf-8')
   # tree=etree.parse('test.html',parser=parser)
    tree=etree.parse('test.html')
    r=tree.xpath('/html/head/title')
    print(r)
