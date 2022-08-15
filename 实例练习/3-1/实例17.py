# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/23  20:42
import string,raw
a=input('请输入内容:\n')
digit=0
space=0
others=0
letters=0
print(a)
for c in a:
    if c.isdigit():       #是数字么    ？
        digit+=1
    elif c.isspace():     #是空格么 ?
        space+=1
    elif c.isalpha():     #是字符么 ？
        letters+=1
    else:
        others+=1
print('digit= %d,space=%d,others=%d'%(digit,space,others))