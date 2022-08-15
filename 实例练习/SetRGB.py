# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  9:56
def RGB(x,y,z):
    a,b,c=0,0,0
    if x<=16:
        a+=1
    if y<=16:
        b+=1
    if z<=16:
        c+=1
    date='#'+a*'0'+hex(x)[2:4]+b*'0'+hex(y)[2:4]+c*'0'+hex(z)[2:4]
    return date
print(RGB(10,11,30))
print(hex(100))