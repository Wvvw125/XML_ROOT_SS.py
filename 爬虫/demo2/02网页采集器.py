# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/12/28 21:46
#UA检测
#UA：user-Agent(请求载体的身份标识)
#UA伪装：门户网站的服务器会检测对应请求的载体身份标识 ，如果检测到请求的载体身份标识为某一款浏览器
#说明该请求是一个正常的请求，但是，如果检测到请求的载体身份标识不是基于某一款浏览器，则表示该请求是一个不正常的请求
#（爬虫）。则 服务器端就很有可能拒绝该次请求。

#UA伪装：让爬虫对应的请求载体身边标识伪装成某一款浏览器
import  requests
if __name__=="__main__":
    #UA 伪装   发起头文件  user-Agent
    headers={'user-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    URL='https://www.baidu.com/s?'
  # 处理rul携带的参数：封装到字典中
    kw=input('enter a word:')
    param={'wd':kw}
    #对指定的url发起的请求对应的url 是携带参数的，并且请求过程中处理参数
    response=requests.get(url=URL,params=param,headers=headers)

    page_text=response.text
    filename=kw+'.html'
    with open(filename,'w',encoding='utf-8')as  fp:
        fp.write(page_text)
        print(filename,'保存成功！！！！')