# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/13  20:12
import requests

string = str(input("请输入一段要翻译的文字："))
data = {
'doctype': 'json',
'type': 'AUTO',
'i':string
}
#url = "http://fanyi.youdao.com/translate"       #有道接口
url ='https://api.66mz8.com/api/translation.php'
r = requests.get(url,params=data)
result = r.json()
print(result)