# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/3/20 19:52
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import requests
import cv2  as cv
import  time
#import pyplot
from PIL import Image   #PIL 可以识别 JPG  BMP  PNG  GIF  TIF   可实现互相转换
im1=Image.open('3.png')
print(im1.mode,im1.size)
im1.save('3-1.jpg')  #</pre>  保存
#1  导入图片
img=cv.imread('2-1.jpg')
#坐标
x,y,w,h=100,100,100,100
#绘制矩形
cv.rectangle(img,(x,y,x+w,y+h),color=(0,0,255),thickness=1)   #color 颜色    thickness=1 线宽
#绘制圆形
cv.circle(img,center=(x+w,y+h),radius=100,color=(255,0,0),thickness=5)  # 圆心，  半径， 颜色 线宽
#显示
cv.imshow('re_img',img)

while True:
  if ord('q')==cv.waitKey():   #键盘输入q  退出
       break
#5  释放内存
cv.AllWindows()
if __name__ == '__main__':
 pass