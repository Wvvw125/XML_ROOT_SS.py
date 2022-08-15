# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/20  22:08
file =open('a.txt','r')
file.seek(2)   #跳过几# 个字节
print(file.read())
print(file.tell())
file.close()
#print(file.read())
print('-------')
