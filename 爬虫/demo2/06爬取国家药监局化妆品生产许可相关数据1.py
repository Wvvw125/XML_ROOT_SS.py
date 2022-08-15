# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/1 20:50
import requests
import json
if __name__=='__main__':
   url='http://scxk.nmpa.gov.cn:81/xk/itownet/portalAction.do?method=getXkzsList'#'http://scxk.nmpa.gov.cn:81/xk/itownet/portalAction.do?method=getXkzsList'
   url2='http://scxk.nmpa.gov.cn:81/xk/itownet/portalAction.do?method=getXkzsById'
   all_data_list=[]
   id_list = []
   # UA 伪装
   headers = {
       'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
   # keyword=input('请输入查询关键字：')
   # page=int(input('输入查询页数：'))
   for a in range(1,6):
     data={
     'on':'true',
     'page':a,
     'pageSize':'15',
     'productName':'',
     'conditionType':'1',
     'applyname':'',
     'applysn':''}
    #请求
     json_ids=requests.post(url=url,data=data,headers=headers).json()
     for dic in json_ids["list"]:
        id_list.append(dic['ID'])
   for id in id_list:
        data={'id':id}
        detail_json=requests.post(url=url2,data=data,headers=headers).json()
        all_data_list.append(detail_json)
    #print(all_data_list)
   fp=open('./alldata,json','w',encoding='utf-8')
   json.dump(all_data_list,fp=fp,ensure_ascii=False)
   print('完成！')
