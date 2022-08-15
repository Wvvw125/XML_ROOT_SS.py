# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/12/29 22:14
# post  请求（携带了参数）
#响应数据是一组 jason 数据
import requests
import json
if __name__=='__main__':
    # 1 指定URL
    POST_URL='https://fanyi.baidu.com/v2transapi'
    # 2 进行UA伪装
    headers={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    #3 post请求参数处理（同get请求一直）
    word=input('enter a word:')
    for ch in word:    #判断中英文    .encode('utf-8')   .decode('utf-8')
     if  u'\u4e00' <= ch <= u'\u9fff':
        print('1')
        langule_1 ='zh'
        langule_2 ='en'
     else:
        print('2')
        langule_1='en'
        langule_2='zh'
    print(langule_2,langule_1)
    data={'from': langule_1,
    'to': langule_2,
    'query': word,
    'transtype': 'realtime',
    'simple_means_flag': '3',
    'sign': '232427.485594',
    'token': '296c11602e288426d4f790f9c434b2d5',
    'domain': 'common'}
    # 4 请求发送
    response=requests.post(url=POST_URL,data=data,headers=headers)
    print(response)
    # 5 获取响应数据:json()方法返回的是obj(如果确认响应数据是json类型，才可以使用json)
    dic_obj=response.json()
    print(dic_obj)
    filename=word+'.json'
    fp=open(filename,'w',encoding='GBK')
    json.dump(dic_obj,fp=fp,ensure_ascii=False)
    print(dic_obj)
#    print(dic_obj['data'][0]['v'])
    print('结束')