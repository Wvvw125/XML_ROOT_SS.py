# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/1 18:35
import requests
if __name__=='__main__':
    post_URL='http://www.kfc.com.cn/kfccda/ashx/GetStoreList.ashx?op=keyword'
    keyword=input('请输入您要查询的地址:')
    P=int(input('请输入显示几页：'))
    for a in range(P):
     data={'cname':'',
        'pid':'',
        'keyword':keyword,
        'pageIndex':a,
        'pageSize':'10'}
     headers={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
     response=requests.post(url=post_URL,data=data,headers=headers)
     print(response.text)
     filename=keyword+'.html'
     with open(filename,'a',encoding='utf-8')as fp:
        fp.write(response.text)
        a += 1
    print('完成')