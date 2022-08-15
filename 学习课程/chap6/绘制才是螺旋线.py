# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/10 11:23
import turtle
import time             #调用库函数
turtle.pensize(2)       #设置画笔的宽度
turtle.bgcolor("black") #设置背景颜色
colors = ["red","yellow","purple","blue"]     #同时设置多个颜色
turtle.tracer(False)
for x in range(400):
    turtle.forward(2*x)
    turtle.color(colors[x % 4])
    turtle.left(91)     #逆时针移动91°
turtle.tracer(True)