# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 13:05
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import requests
path='%(name)s'   # 字符串占位符
a='%d'            # 数字占位符
print(path,a)
print('--------------')
if __name__ == '__main__':
    # 1 指定URL
    url = 'https://fanyi.baidu.com/v2transapi'
    # 2 进行UA伪装
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
path=format(path%{'name':'F:\售后体系库\……【客户软件库】……\V2.0平台\自动修改1'})
a=format(a%(22223.55))
print(path,a)