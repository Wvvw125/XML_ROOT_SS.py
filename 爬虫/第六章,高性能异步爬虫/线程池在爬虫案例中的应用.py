# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/4 11:02
# 爬取梨视频的视频数据
import random
import requests
from multiprocessing.dummy import Pool
from  lxml import etree
# 1 指定URL 解析出详情页的url和视频名称
url = 'https://www.pearvideo.com/category_5'
# 2 进行UA伪装
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
# 原则：线程池处理的是阻塞且耗时的操作
page_text=requests.get(url=url,headers=headers).text
tree_list=etree.HTML(page_text)
li_list=tree_list.xpath('//*[@id="listvideoListUl"]/li')
urls = []
for li  in li_list:
    name_list=li.xpath('//div/a/div[2]/text()')
    url_li_list=li.xpath('//div[@class="vervideo-bd"]/a/@href')
for a in range(0,len(name_list)):
    name=name_list[a]+'.mp4'
    new_url='https://www.pearvideo.com/'+url_li_list[a]
    mrd = str(random.random())
    id=[]
    for b in url_li_list[a]:
        if b.isdigit():
            id.append(b)
    ID=id[0]+id[1]+id[2]+id[3]+id[4]+id[5]+id[6]
    a_url='https://www.pearvideo.com/videoStatus.jsp?contId='+ID+'&mrd='+mrd
#   print(new_url,name,ID,a_url,mrd)
    param={'contId':ID,
            'mrd':mrd}
    headers = {'Referer': new_url,
               'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    a_page_text=requests.get(url=a_url,params=param,headers=headers).json()
    a_dic={'name':name,'url':a_page_text['videoInfo']['videos']['srcUrl']}
    urls.append(a_dic)
print(urls)

a=0
def get_video_data(url):
    global a  # 返回调用次数
    url=urls[a]
    print(url['name'],'正在下载.....')
    data=requests.get(url=url['url'],headers=headers).content
    #持久化存储的操作
    with open(url['name'],'wb') as fp:
        fp.write(data)
        print(url['name'],'下载完成')
    a+= 1

#多线程，线程池
pool=Pool(4)
pool.map(get_video_data,urls)
pool.close
pool.join

if __name__ == '__main__':
 pass