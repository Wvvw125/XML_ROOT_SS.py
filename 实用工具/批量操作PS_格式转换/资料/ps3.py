# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/24  20:43
from comtypes.client import CreateObject
from photoshop.api import save_options
from photoshop.api.open_options import eps
from win32com.client import Dispatch
path= '/实用工具/操作PS'
PHApp=Dispatch('Photoshop.Application')
numDocs=PHApp.Documents.count
if numDocs==0 :
    docRef =PHApp.Open(path+'/'+'喷头转接板①.psd')
else:
    docRef=PHApp.ActiveDocument

jpgSaveOptions = Dispatch("Photoshop.JPEGSaveOptions")
# print(jpgSaveOptions)
# jpgSaveOptions =PHApp.JPEGSaveOption