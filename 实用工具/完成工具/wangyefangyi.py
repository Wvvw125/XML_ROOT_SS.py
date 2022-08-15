# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/8/13  22:34
import  requests
url='https://aidemo.youdao.com/trans'
headers = {
    'user-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
data={'q': 'Colunas 7',
     'from': 'zh-CHS',
     'to': 'pt'}
respontext=requests.post(url=url,data=data,headers=headers).json()
print(type(respontext))
print(respontext['translation'][0])
