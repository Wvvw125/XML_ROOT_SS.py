# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/24  21:18
from PIL import Image   #PIL 可以识别 JPG  BMP  PNG  GIF  TIF   可实现互相转换
im1=Image.open('喷头转接板①.jpg')
print(im1.mode,im1.size)
print('-----')
im2=Image.open('喷头转接板①.BMP')
print(im2.mode,im2.size)
print('-----')
im3=Image.open('喷头转接板①.PNG')
print(im3.mode,im3.size)
print('-----')
#im4=Image.open('喷头转接板①.PDF')  不识别
#print(im4.mode,im4.size)
#im7=Image.open('喷头转接板①.psd')  不识别
#print(im7.mode,im7.size)
print('-----')
im5=Image.open('喷头转接板①.GIF')
print(im5.mode,im5.size)
print('-----')
im6=Image.open('喷头转接板①.TIF')
print(im6.mode,im6.size)
im6.save('转接板.jpg')  #</pre>  保存
print('-----')
