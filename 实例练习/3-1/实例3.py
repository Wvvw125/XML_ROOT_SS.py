# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/13 18:05
for i in  range(1,85):
    if 168 %i ==0:
        j=168/i
        if i>j and (i+j) %2==0 and (i-j)%2==0:
            m=(i+j)/2
            n=(i-j)/2
            x=n*n-100
            print(x)