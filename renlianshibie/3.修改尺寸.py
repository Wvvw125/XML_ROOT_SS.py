# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/3/20 19:52
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import requests
import cv2  as cv
import  time
#import pyplot
from PIL import image   #PIL 可以识别 JPG  BMP  PNG  GIF  TIF   可实现互相转换
im1=Image.open('3.png')
print(im1.mode,im1.size)
im1.save('3-1.jpg')  #</pre>  保存
#1  导入图片
img=cv.imread('2-1.jpg')
resize_img=cv.resize(img,dsize=(200,200))
cv.imshow('img',img)
cv.imshow('resize_img',resize_img)
print('未修改',img.shape)
print('修改后',resize_img.shape)
#4  等待
while True:
  if ord('q')==cv.waitKey():   #键盘输入q  退出
       break
#5  释放内存
cv.AllWindows()
if __name__ == '__main__':
 pass