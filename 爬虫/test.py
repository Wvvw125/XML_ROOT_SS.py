# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/2 15:15
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import requests

if __name__ == '__main__':
    # 1 指定URL
    POST_URL = 'https://fanyi.baidu.com/v2transapi'
    # 2 进行UA伪装
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
#coding=utf-8
import requests

#请求地址
targetUrl = "https://www.baidu.com"
#代理服务器
proxyHost = "ip"
proxyPort = "port"
proxyMeta = "http://%(host)s:%(port)s" % {
    "host" : proxyHost,
    "port" : proxyPort,
}
#pip install -U requests[socks]  socks5
# proxyMeta = "socks5://%(host)s:%(port)s" % {

#     "host" : proxyHost,

#     "port" : proxyPort,

# }
proxies = {
    "http"  : proxyMeta,
    "https"  : proxyMeta
}
resp = requests.get(targetUrl, proxies=proxies)
print(resp.status_code)
print(resp.text)