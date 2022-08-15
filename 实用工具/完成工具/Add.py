# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/7/8  14:52
import re

NNa="hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:1,cphl_0:3,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:2,hlvg_1:1,hlxlo_1:0,hlxro_1:0,hlyo_1:0,cphl_2:0,hlvg_2:0,hlxlo_2:0,hlxro_2:0,hlyo_2:0,cphl_3:1,hlvg_3:1,hlxlo_3:0,hlxro_3:0,hlyo_3:0,cphl_4:1,hlvg_4:0,hlxlo_4:0,hlxro_4:0,hlyo_4:0,cphl_5:0,hlvg_5:1,hlxlo_5:0,hlxro_5:0,hlyo_5:0,cphl_6:2,hlvg_6:0,hlxlo_6:0,hlxro_6:0,hlyo_6:0,cphl_7:3,hlvg_7:1,hlxlo_7:0,hlxro_7:0,hlyo_7:0"
NNb='hi:0,hio:1,jws:0,hxlp:0,hxrp:0,hyp:0,hid:1,cphl_0:3,hlvg_0:0,hlxlo_0:0,hlxro_0:0,hlyo_0:0,cphl_1:2,hid:1'
p=re.compile(r'hid:')
print(p.findall(NNa))
print(NNa.split(',')[6]) #以  ，   分割切片
print(NNa.count(',')) #统计出现次数
NNc=NNb.replace('hid:1','hid:0')  # 切换指定内容
print(NNc)
   # string.replace(str1, str2,  num=string.count(str1))

'''1 取出 value
     调用 转换程序  传入 Value  
  2 转换程序 替换 hid:1 值
3 返回 替换结果
4 root 写入 xml
'''

