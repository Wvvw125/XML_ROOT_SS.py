# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/12/29 22:14
# post  请求（携带了参数）
#响应数据是一组 jason 数据
import requests
import json
if __name__=='__main__':
    # 1 指定URL
    POST_URL='https://fanyi.baidu.com/'
                                       #   中文   https: // fanyi.baidu.com /#zh/en/
                                       #   英文   https: // fanyi.baidu.com /#en/zh/
    # 2 进行UA伪装
    headers={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    #3 post请求参数处理（同get请求一直）
    word=input('enter a word:')
    data={'kw':word}
    # 4 请求发送
    response=requests.post(url=POST_URL,data=data,headers=headers)
    # 5 获取响应数据:json()方法返回的是obj(如果确认响应数据是json类型，才可以使用json)
    dic_obj=response.json()
    filename=word+'.json'
    fp=open(filename,'w',encoding='utf-8')
    json.dump(dic_obj,fp=fp,ensure_ascii=False)
    print(dic_obj)
    print(dic_obj['data'][0]['v'])
    print('结束')