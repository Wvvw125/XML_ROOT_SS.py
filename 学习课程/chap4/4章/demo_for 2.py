# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/7  20:41
'''输出100-999之间的水仙花数
举列：
153=3*3*3+5*5*5+1*1*1   水仙花数'''

for i in range(100,1000):
    ge=i%10        #个位
    shi=i//10%10   #十位
    bai=i//100     #百位
    #print(bai,shi,ge)
    if ge**3+shi**3+bai**3==i:
        print(i)