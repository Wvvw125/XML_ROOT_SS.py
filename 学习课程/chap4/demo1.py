# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/28 21:48
# range()的三种创建方式
'''第一种创建方式，只有一个参数（小括号中只给了一个数）'''
r=range(10)  #{0，1，2.3，4，5，6，7，8，9} 默认0开始。布长1
print(r)     #range (0,10)
print(list(r))
#用于查看range中的整数列序列， list 是列表的意思
'''第二中创建方式，给了两个参数（小括号给了两个数）'''
r=range(1,10)
print(list(r))
'''第三中创建方式，给了三个参数（小括号给了三个数）'''
r=range(1,10,2)
print(list(r))   #[1,3,5,7,9]

'''判断指定的整数， 在序列中是否存在 in  not  in '''
print(10 in r)
print(9 in r)
print(10 not in r)
print(9 not in r)

print(range(1,20,1))
print(range(100,1,1))

