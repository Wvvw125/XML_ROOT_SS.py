# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/7/10  21:48
content='''苹果是绿色的
橙子是橙色的
香蕉是黄色的
乌鸦是黑色的'''

import  re
p= re.compile(r'.色')
for one in  p.findall(content):
    print(one )