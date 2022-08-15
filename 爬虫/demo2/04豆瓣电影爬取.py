# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/1 17:51
import json

import  requests
if __name__=='__main__':
 URL='https://movie.douban.com/j/chart/top_list'
 param={
     'type':'17',
     'interval_id':'100:90',
     'action':'',
     'start': '0',  #从库中第几部电影取
     'limit': '20'   #从请求中请求的个数
 }
 headers = {
     'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
 response=requests.get(url=URL,params=param,headers=headers)
 list_data=response.json()
 fp=open('./douban.json','w',encoding='utf-8')
 json.dump(list_data,fp=fp,ensure_ascii=False)
 print('over!')