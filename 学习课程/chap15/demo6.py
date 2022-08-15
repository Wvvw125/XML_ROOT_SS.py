# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/20  22:08
import ps
src_file=open('logo.png','rb')
target_file=open('copylogo.tiff','wb')
target_file.write(src_file.read())
target_file.close()
src_file.close()