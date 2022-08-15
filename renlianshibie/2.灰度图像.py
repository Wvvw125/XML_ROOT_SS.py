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
img=cv.imread('1-1.jpg')
gray_img=cv.cvtColor(img,cv.COLOR_BGR2GRAY)
#显示灰度图片
#3  显示图片
cv.imshow('gray',gray_img)
#保存灰度图片
cv.imwrite('gray_facell.jpg',gray_img)
#4  等待
cv.waitKey(1)
time.sleep(5)
#5  释放内存
cv.AllWindows()
if __name__ == '__main__':
 pass