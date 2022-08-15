# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/11 22:47
list=[10,20,30,40,50,60,70,80]
#stat=1 stop=6 step=1
#print(list[1:6:1])
print('原列表',id(list))
list2=list[1:6:1]
print('切片后的片段',id(list2))
print('''------步长为正-----''')
print(list[1:6])
print(list[1:6:])
print(list[1:6:2])
print(list[:6:])  #前面stat 默认0开始  步长默认1
print(list[::])   # 中间 不写  默认全部
print('-----步长为负数---------')
print('原列表：',list)
print(list[::-1])
print(list[7::-1])
print(list[6:0:-2])