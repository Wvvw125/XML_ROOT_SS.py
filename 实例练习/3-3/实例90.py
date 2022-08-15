# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/5/22  13:32
if __name__ == '__main__':
    import time
    start = time.time()
    for i in range(3000):
        print(i,end='')
    end = time.time()
    print('\n',end - start)


    start = time.perf_counter()
    for i in range(10000):
        print(i,end='')
    end = time.perf_counter()
    print('\n', 'different is %6.3f' % (end - start))

'''    from dateutil import parser
    dt = parser.parse("Aug 28 2015 12:00AM")
    print (dt)
     '''
