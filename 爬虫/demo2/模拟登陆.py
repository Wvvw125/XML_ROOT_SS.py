# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/1/2 20:12
# -*-coding:utf-8-*-
import  requests
from lxml import etree
import ddddocr
if __name__ == '__main__':
    url = 'https://so.gushiwen.cn/user/login.aspx?from=http://so.gushiwen.cn/user/collect.aspx'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
    #1 获取验证码吗,获取验证码图片的文字数据
    #2 对post进行发送（处理请求参数）
    #3 对响应数据进行持久化存储
    session=requests.Session
    page_text=requests.get(url=url,headers=headers).content
    parsers=etree.HTMLParser(encoding='utf-8')
    tree=etree.HTML(page_text,parser=parsers)
    list=tree.xpath('//*[@id="imgCode"]/@src')[0]
    VIEWSTATE=tree.xpath('//*[@id="__VIEWSTATE"]/@value')[0]
    VIEWSTATEGENERATOR=tree.xpath('//*[@id="__VIEWSTATEGENERATOR"]/@value')[0]
    new_url='https://so.gushiwen.cn'+list
    png_text=requests.get(url=new_url,headers=headers).content
    with open('./text.gif','wb') as  fp:
        fp.write(png_text)
    ocr = ddddocr.DdddOcr()
    with open("text.gif", 'rb') as f:
      image = f.read()
    res = str.upper(ocr.classification(image))
    print(res,type(ocr.classification(image)))
    print(VIEWSTATEGENERATOR)
    print(VIEWSTATE)

    #模拟登陆
    login_url='https://so.gushiwen.cn/user/login.aspx?from=http%3a%2f%2fso.gushiwen.cn%2fuser%2fcollect.aspx'
    data={
    '__VIEWSTATE':VIEWSTATE,
    '__VIEWSTATEGENERATOR':VIEWSTATEGENERATOR,
    'from':'http://so.gushiwen.cn/user/collect.aspx',
    'email':'598629040@qq.com',
    'pwd':'w125s521',
    'code':res,
    'denglu':'登录'
    }
    #手动 cookie
    # headers={'Cookie':'HMACCOUNT=D82B2D82B7CB239B; HMACCOUNT_BFESS=D82B2D82B7CB239B; BIDUPSID=9DA2AE9843E8CBF0EACC9AF131E4E12C; PSTM=1637398405; __yjs_duid=1_ae82667b627bdab72d49f1e9098e10f41637398452157; BAIDUID=8C7F80440F0F937642C54E015A62489D:SL=0:NR=10:FG=1; BDUSS=BSTVpaR3dRbUFEOUNZb1VHMXRran5Ob1VSUHFwRUEtTTgxd3JFYzREd0JCZXhoRVFBQUFBJCQAAAAAAAAAAAEAAADruCkOd2~A1Wdlst0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF4xGEBeMRhaX; BDUSS_BFESS=BSTVpaR3dRbUFEOUNZb1VHMXRran5Ob1VSUHFwRUEtTTgxd3JFYzREd0JCZXhoRVFBQUFBJCQAAAAAAAAAAAEAAADruCkOd2~A1Wdlst0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF4xGEBeMRhaX; H_PS_PSSID=31660_26350; BDORZ=FFFB88E999055A3F8A630C64834BD6D0; HMVT=6bcd52f51e9b3dce32bec4a3997715ac|1643630852|; BAIDUID_BFESS=8C7F80440F0F937642C54E015A62489D:SL=0:NR=10:FG=1'#}
    #自动 cookie   session 代替 requests
    response=session.post(url=login_url,headers=headers,data=data)
    #  png_text = session.get(url=new_url, headers=headers).content  #携带了cookie的session
    login_data=response.text
    print(response.status_code)
    with open('denglujiemian.html','w',encoding='utf-8') as fp:
        fp.write(login_data)