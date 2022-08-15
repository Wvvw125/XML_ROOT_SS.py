# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/4 10:37
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import requests
import  time
#导入线程池模块对应的类
from multiprocessing.dummy import Pool
if __name__ == '__main__':
    # 1 指定URL
    POST_URL = 'https://fanyi.baidu.com/v2transapi'
    # 2 进行UA伪装
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'}
'''
def get_page(str):
    print('正在下载：',str)
    time.sleep(2)
    print('下载成功',str)
name_list=['校准','啊哈哈','表白','尺寸']

start_time= time.time()
for  i in range(len(name_list)):
    get_page(name_list[i])
end_time=time.time()
print('%d second'%(end_time-start_time)) '''
start_time= time.time()
def get_page(str):
    print("正在下载:",'\n',str)
    time.sleep(2)
    print('下载成功:','\n',str)
name_list=['校准','啊哈哈','表白','尺寸']
#实例化一个线程池对象
pool=Pool(4)
#将列表中每一个列表元素传递给get_page进行处理。
pool.map(get_page,name_list)
end_time=time.time()
print(end_time-start_time)