# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/3/20 19:52
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import cv2
import  os
import  numpy as np
from  PIL import Image
import  _pyinstaller_hooks_contrib
import  time
'''face 报错未安装  Open contrib'''
#F:/wwx/buckup/PycharmProjects1/Lib/site-packages/cv2/data/haarcascade_frontalface_alt2.xml
#haarcascade_frontalface_default
#路径不能含有中文，图片路径训练模块路径都不能含有中文
def getImageAnglabels(path):
    facesSamples=[]  #储存 人脸数据
    ids=[]  #储存姓名
    #储存照片信息
    imagePaths=[os.path.join(path,f)  for f in  os.listdir(path)]
    #加载分类器
    face_detector=cv2.CascadeClassifier('F:/wwx/buckup/PycharmProjects1/Lib/site-packages/cv2/data/haarcascade_frontalface_alt2.xml')
    #遍历列表中的图片
    for imagePath in  imagePaths:
        #打开图片，灰度化，PIL有九种不同模式，1，L,P,RGB，CMKY，YCbCr,I,F
        PIL_img=Image.open(imagePath).convert('L')
        #将图片转换为数据，以黑白深浅
        img_numpy=np.array(PIL_img,'uint8')
        #获取图片人脸特征
        faces=face_detector.detectMultiScale(img_numpy)
        #获取每张图片的ID和姓名
        id=int(os.path.split(imagePath)[1].split('.')[0])
        #预防无面容照片
        for x,y,w,h in faces:
            ids.append(id)
            facesSamples.append(img_numpy[y:y+h,x:x+w])
    #打印脸部特征和ID
    print('id',id)
    print('fs',facesSamples)
    return  facesSamples,ids
#cap=cv.VideoCapture(0)#本地摄像头
#摄像头

#释放内容
cv2.destroyAllWindows()
if __name__ == '__main__':
 path='./text/'
 faces,ids=getImageAnglabels(path)
 recognizer=cv2.face.LBPHFaceRecognizer_create()
 recognizer.train(faces,np.array(ids))
 recognizer.write('trainer/tainer.yml')