# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/8/2  23:05
# 编码
s='天涯共此时'
print(s.encode(encoding='GBK')) #在GBK这种编码格式中，一个中文，占两个字节
print(s.encode(encoding='UTF-8')) #在UTF-8中  一个中文占三个字节
#解码
byte=s.encode(encoding="GBK")
print(byte.decode(encoding='GBK'))


byte=s.encode(encoding='UTF-8')
print(byte.decode(encoding='UTF-8'))