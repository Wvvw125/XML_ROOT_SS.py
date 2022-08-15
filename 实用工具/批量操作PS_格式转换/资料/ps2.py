# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/24  20:43
from comtypes.client import CreateObject
from photoshop.api import save_options
from photoshop.api.open_options import eps
path= '/实用工具/操作PS'
ps_app=CreateObject('Photoshop.Application',dynamic=True)
ps_app.Preferences.RulerUnits=1
# doc=
doc= ps_app.Open(path+'/'+'喷头转接板①.psd')
sdoc="喷头转接板①.psd"
ps_app.JPEGSved#('喷头转接板①.jpg')
# doc.SaveOptions.pdf()