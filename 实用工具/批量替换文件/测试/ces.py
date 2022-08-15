# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/11  21:16

path0 ='F:/wwx使用/buckup/PycharmProjects/实用工具/测试/目标' # input修改目录
path1 ='F:/wwx使用/buckup/PycharmProjects/实用工具/测试/改动' #材料目录

#删除
PNG0 = '333.png'
PNG1 = '444.png'
#增加
D = ''
D1= '555.png'
import os
import shutil
#获取所有文件夹名  #共五级
list=[]
list.append(path0)
IA= os.listdir(path0)
for a in IA:    #一级
    if "." not in a:
      list.append(path0+"/"+a)
      B=path0+"/"+a
      IB= os.listdir(B)
      for b in IB:  #二级
          if "." not in b:
              list.append(B+"/"+b)
              C=B+"/"+b
              IC= os.listdir(C)
              for c in IC:  # 三级
                  if "." not in c:
                      list.append(C + "/" + c)
                      D = C + "/" + c
                      ID = os.listdir(D)
                      for  d in ID:  # 四级
                          if "." not in d:
                              list.append(D + "/" + d)
                              E = D + "/" + d
                              IE = os.listdir(E)
                              for e in IE:  # 五级
                                  if "." not in e:
                                      list.append(E+ "/" + e)
                                      F = E + "/" + e
                                      ID = os.listdir(F)

                       #                 修改
for L in list:
    IX = os.listdir(L)
    for x in IX :
     if x == PNG0 or x== PNG1:
        os.chdir(L)
        os.remove(x) #删除指定文件
#  else:
    os.chdir(path1)    #同时添加
    shutil.copy(D,L)
    shutil.copy(D1,L)




