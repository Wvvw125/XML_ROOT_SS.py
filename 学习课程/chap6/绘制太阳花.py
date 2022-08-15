# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/10 11:19
from turtle import *        #调用库函数
color("red",'yellow')       #设置颜色
begin_fill()                #准备开始填充图形
while True:
     forward(200)            #向当前画笔方向移动 200 像素长度
     left(170)               #逆时针移动170°
     if abs(pos())<1:
         break
end_fill()                  #填充完成
done()
#程序中的最后一个语句

