# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/3 22:38
#可以输出的字符串
print("helloworld")
print("helloworld")

#含有运算符的表达式
print(3+1)

#将数据输出文件中，注意点   1.指定的盘符存在  2使用file= fp

fp=open('D:/text.txt','a+')
print('helloworld',file=fp)
fp.close()

#不进行换行输出（输出内容在一行当中）
print('hello','world','python')