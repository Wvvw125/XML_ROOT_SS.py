# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/20  22:55
#import photoshop as  ps

import win32com
from comtypes.client import CreateObject
import pywin32_system32
import  photoshop.api
import  os
path= '/实用工具/操作PS/资料'
ps_app=CreateObject('Photoshop.Application',dynamic=True)
ps_app.Preferences.RulerUnits=1
doc=ps_app.Documents.Add(1024,1024,72,"new_test",2,1,1)
#new_art_layer = doc.ArtLayers.Add()
#new_art_layer.name = "background_color_base" # 创建一个名为background_color_base图层
# doc.selection.Fill(background_color)

psd_options = CreateObject('Photoshop.PhotoshopSaveOptions')
psd_options.annotations = False
psd_options.alphaChannels = True
psd_options.layers = True
psd_options.spotColors = True
psd_options.embedColorProfile = True
doc.SaveAs(r"本地路径.psd", psd_options,True)

# doc.Close("new_test")  #关闭文档
# ps_app.quit()  #关闭PS
#os.chdir(path)
#doc=ps_app.Documents.Open('喷头转接板①.psd')