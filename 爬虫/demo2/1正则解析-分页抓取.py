# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
#需求爬取糗事百科中糗图板块下所有的糗图
import  requests
import  re
import  os
if __name__=='__main__':
    if not os.path.exists('./qiutulibs'):
        os.mkdir('./qiutulibs')
    url ='https://www.qiushibaike.com/imgrank/page/%d/'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    for pageNum in  range(1,16):
      new_url= format(url%pageNum)
      page_text=requests.get(url=new_url,headers=headers).text
      '''<div class="thumb">
     <a href="/article/125021118" target="_blank">
     <img src="//pic.qiushibaike.com/system/pictures/12502/125021118/medium/83DJRSZ9BKRDBZDT.jpg" alt="糗事#125021118" class="illustration" width="100%" height="auto">
     </a>
     </div>'''
      ex='<div class="thumb">.*?<img src="(.*?)" alt.*?</div>'
      img_src_list=re.findall(ex,page_text,re.S)
      print(img_src_list)
      for src in img_src_list:
        #拼接处一个完整的图片地址
        src='https:'+src
        img_data=requests.get(url=src,headers=headers).content
        #生成图片名称
        img_name=src.split('/')[-1]
        imgPath='./qiutulibs/'+img_name
        with open(imgPath,'wb')as fp:
            fp.write(img_data)
            print(img_name,'下载成功！')