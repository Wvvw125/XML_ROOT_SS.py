# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/5/22  22:07
import sys
import demo5
from  PyQt5.QtWidgets import QApplication,QMainWindow
if __name__ == '__main__':
    #创建Qappalication 类实例
    app=QApplication(sys.argv)
    #
    mainWindow=QMainWindow()
    #创建3一个窗口
    ui=demo5.Ui_MainWindow()
    ui.setupUi(mainWindow)
   # ui.setWindowTitle('第一个应用22')
    #显示窗口
    mainWindow.show()
    # 进入程序主循环并通过exit 函数确保主循环安全结束
    sys.exit(app.exec_())

    '''  #创建一个窗口
    w=()
    #设置窗口尺寸
    w.resize(400,200)
    #移动窗口
    w.move(300,300)
    #设置窗口的标题
    w.setWindowTitle('第一个应用')
    #显示窗口
    w.show()
    #进入程序的主循环， 并通过exit 函数确保主循环安全结束
    sys.exit(app.exec_())
'''