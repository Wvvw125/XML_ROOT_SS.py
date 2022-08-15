# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/7/10  20:31
content=''

lines=content.splitlines()   #文本按行放入列表
for line in lines:
    pos2=line.find('万/月')
    if pos2<2:
        pos2=line.find('万/每月')  #查找    字符串位置
        if pos2 <0:
            continue
#分析查找位置起始位置
idx= pos2-1
# 只要是数字或者 小数点，就继续往前找
while line[idx].isdigit() or line[idx]=='.':
    idx-=1

#现在 iidx指向  数字前面那个字
pos1=idx+1
# 输出指定字符串
print(line[pos1:pos2])