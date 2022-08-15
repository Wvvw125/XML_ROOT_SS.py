# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/14  10:47
# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/13  19:31
import requests
url='https://cn.bing.com/ttranslatev3?isVertical=1&&IG=3D688CB0A2174BA196C44BEFECAB29D3&IID=translator.5023.1'

def translate__weiruan(info,fr='zh-Hans',to='en'):
    print('翻译结果：',+requests.post(url,data={'text':info,'from':fr,'to':to,'doctype':'json'}).json()['Response'])

def is_Chinese(str):          #判断输入内容是否是中文
  for ch in  str:
      if '\u4e00'<=ch<='U9fff':
            return  True
      else:
            return False

def start_translate():
    trans=input('翻译内容：')
    if is_Chinese(trans):
        translate__weiruan(trans)
    else:
        translate__weiruan(trans,fr='en',to='zh-Hans')
if  __name__=='__main__':
    print('翻译结果由微软翻译提供！（请确保网络已连接）')
    while True:
        start_translate()
        print('\n')