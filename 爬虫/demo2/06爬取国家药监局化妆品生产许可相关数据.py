# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/1 20:50
import requests
if __name__=='__main__':
    url='http://scxk.nmpa.gov.cn:81/xk/'#'http://scxk.nmpa.gov.cn:81/xk/itownet/portalAction.do?method=getXkzsList'
    headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    page_text=requests.get(url=url,headers=headers).text
    print(page_text)
    with open('./huazhuangping.html','w',encoding='gbk')as fp:
        fp.write(page_text)