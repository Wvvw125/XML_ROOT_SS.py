# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/2 16:03
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import requests

if __name__ == '__main__':
    # 1 指定URL
    POST_URL = 'https://fanyi.baidu.com/v2transapi'
    # 2 进行UA伪装
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    urls=['https://www.baidu.com/s?wd=IP','https://blog.csdn.net/qq_35083093/article/details/79052763','https://www.bilibili.com/video/BV1Yh411o7Sz?p=39&spm_id_from=pageDriver']
def get_content(url):
    print('正在爬取',url)
    #get 方法是一个阻塞的方法，
    response=requests.get(url=url,headers=headers)
    if response.status_code==200:
       return  response.content

def parse_content(content):
    print('响应数据的长度为：',len(content))

for url in urls:
    content=get_content(url)
    parse_content(content)