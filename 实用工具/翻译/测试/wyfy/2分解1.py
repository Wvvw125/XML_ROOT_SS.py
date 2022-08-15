# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/13  20:12
import requests
info=[]
fr='zh-Hans'
to='en'
string = str(input("请输入一段要翻译的文字："))
data = {'text':info,'from':fr,'to':to,'doctype':'json'} ,
url = "https://cn.bing.com/ttranslatev3?isVertical=1&&IG=3D688CB0A2174BA196C44BEFECAB29D3&IID=translator.5023.1"       #有道接口
#url ='https://api.66mz8.com/api/translation.php'
r = requests.get(url,params=data)
result = r.json()
print(result)