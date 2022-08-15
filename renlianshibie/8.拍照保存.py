# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/3/20 19:52
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
import cv2
import  time

#F:/wwx/buckup/PycharmProjects1/Lib/site-packages/cv2/data/haarcascade_frontalface_alt2.xml
#haarcascade_frontalface_default
#路径不能含有中文，图片路径训练模块路径都不能含有中文

#读取视频
#cap=cv.VideoCapture(0)#本地摄像头
#摄像头
cap=cv2.VideoCapture(0)
flag=1
num=1
while (cap.isOpened()):  #检测摄像头是否开启
    ret_flag,Vshow=cap.read()       #得到每针图像
    cv2.imshow('capture_text',Vshow)  #显示图像
    k=cv2.waitKey(1) &0xFF    #按键判断
    if k==ord('s'):   #  保存
        cv2.imwrite('F:\\wwx\\buckup\\PycharmProjects\\renlianshibie\\text\\'+str(num)+'name'+'.jpg',Vshow)
        print('succes to save'+str(num)+'.jpg')
        print('---------------------------')
        num+=1
    elif k==ord(' '):   #退出
        break
#释放摄像头
cap.release
#释放内容
cv2.destroyAllWindows()
if __name__ == '__main__':
 pass