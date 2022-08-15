# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/3/20 19:52
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import cv2  as cv
import  time

#F:/wwx/buckup/PycharmProjects1/Lib/site-packages/cv2/data/haarcascade_frontalface_alt2.xml
#路径不能含有中文，图片路径训练模块路径都不能含有中文
def face_detect_demo():
  gray=cv.cvtColor(img,cv.COLOR_BGR2GRAY)   # CascadeClassifier
  face_detect=cv.CascadeClassifier('F:/wwx/buckup/PycharmProjects1/Lib/site-packages/cv2/data/haarcascade_frontalface_alt2.xml')
 # face=face_detect.detectMultiScale(gray,1.1,5,0,(100,100),(600,600))  # ( gray,缩放倍数,5,0,(最小),(最大))
  face=face_detect.detectMultiScale(gray,1.03,5)  # ( gray,缩放倍数,5,0,(最小),(最大))
  for x,y,w,h in face:
      cv.rectangle(img,(x,y),(x+w,y+h),color=(0,0,255),thickness=2)
  resize_img = cv.resize(img, dsize=(420, 640))
  cv.imshow('result', resize_img)

#im1.save('3-1.jpg')  #</pre>  保存
img=cv.imread('2-1.jpg')
face_detect_demo()


while True:
  if ord('q')==cv.waitKey():   #键盘输入q  退出
       break
#5  释放内存
cv.AllWindows()
if __name__ == '__main__':
 pass