# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/20  21:41
import time

import schedule
def job():
    print('哈哈——————————个锤子')

schedule.every(3).seconds.do(job)
while True:
    schedule.run_pending()
    time.sleep(1)