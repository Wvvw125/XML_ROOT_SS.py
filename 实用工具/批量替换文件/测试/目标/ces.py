# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/3/16 13:52
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import os,time
filename='.'
filemet=time.localtime(os.stat(filename).st_mtime)
print(time.strftime('%y-%m-%d'),filemet)
if __name__ == '__main__':
 pass