# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/9/19  13:11
# -*- coding: utf-8 -*-
x='{x 1}{i config.png 4 0}{x 5}板卡测试'
if '{' in x:
    print(1)
    a=x.split('}')[-1]
    print(a)
    print(x.split(a)[0])