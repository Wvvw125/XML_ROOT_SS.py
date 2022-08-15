# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/8/13  15:51
'''import xml.etree.ElementTree as ET
a = ET.Element('vale')
b = ET.SubElement(a, 'itmes')
b.text='\n'
print( ET.dump(b))'''
'''
from  googletrans import Translator
# from  pygoogletranslation import Translator
translator=Translator(service_urls=['translate.google.cn'])
t=(translator.translate(['goog  morning','India'],dest='ta'))
for t1 in t:
    print(t1.text)'''
import  requests
import  random
import  json
from  hashlib import md5

appid = '20220814001306572'
appkey = '43ns40APSGjNedq4nvAg'
from_lang = 'zh'
to_lang =  'en'

query='苹果'
'''endpoint = 'http://api.fanyi.baidu.com'
path = '/api/trans/vip/translate'
url = endpoint + path'''

def make_md5(s, encoding='utf-8'):
    return md5(s.encode(encoding)).hexdigest()
salt = random.randint(32768, 65536)
sign = make_md5(appid + query + str(salt) + appkey)

url='https://fanyi-api.baidu.com/api/trans/vip/translate'
headers = {
'Content-Type':'application/x-www-form-urlencoded'}
data={'q': query,
     'from': from_lang,
     'to': to_lang,
     'appid':appid,
      'salt':salt,
      'sign':sign}
respontext=requests.post(url=url,params=data,headers=headers).json()
print(respontext["trans_result"][0]['dst'])
# print(respontext['trans_result'])
