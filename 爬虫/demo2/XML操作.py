# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/23  20:42
from 爬虫.demo2.XML_CFG import clean_cfg,board_cfg,print_cfg, face_display
from time import  sleep
if __name__=='__main__':
    print(
        '+++++++++++++++++++++++++++++++++++++++固定置0，设置配置++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++')
    print_cfg().color()  # 截墨墨量 置100    ok
    clean_cfg().not_UV()  # 清洗墨泵端口设置   ok
    clean_cfg().Autoclean()  # 自动清洗端口置0    ok
    face_display().set_colo_op()  # 墨量显示置1-7      ok
    sleep(1)
    print('==========================================临时配置调整============================================================')
    board_cfg().ETH()  # 板卡地址模式切换
#  print_cfg().O()                 #白边模式置0      ok
#  textp_cfg().O()                 #测试图模式置0
#  action_cfg().O()                #动作模式置0
#  head_cfg().Oset_180_w_o_s()    #喷头参数置0
    sleep(1)
    print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^我是一条分界线^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^')
    sleep(1)
    print('配置初始化置零完成')