# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/20  22:08
file=open('a.txt','r')
print(file.readlines())
file =open('c.txt','a')
file.write('hello')
file.close()
file=open('c.txt','r')
print(file.readlines())