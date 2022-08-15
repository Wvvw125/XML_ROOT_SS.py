# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/3/16 12:19
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import os,time
path='F:\wwx使用\\buckup\PycharmProjects\实用工具\批量替换文件\测试\改动'
a=os.listdir()
print(a)
for c in a:
 if '.'   in c:
   b = path+ '/' +c
   print(b)
   modifiedTime = time.localtime(os.stat(b).st_mtime)
   createdTime = time.localtime(os.stat(b).st_ctime)
   print(modifiedTime,'\n',createdTime)
 else:
     pass
 # c=os.path.getmtime(b)
  #c=os.path.getctime(b)
if __name__ == '__main__':
  pass