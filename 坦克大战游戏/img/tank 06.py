# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/14 13:31
'''新增功能
我方坦克的加载
 '''
#导入pygame模块
import pygame
SCREEN_WIDTH=700
SCREEN_HEIGHT=500
BG_COLOR=pygame.Color(0,0,0)
TEXT_COLOR=pygame.Color(255,0,0)
class Maingame():
    window=None
    def __init__(self):
         pass
    #开始游戏
    def startgame(self):
        #加载主窗口
        pygame.display.init()
        #设置窗口的大小及显示
        Maingame.window=pygame.display.set_mode([SCREEN_WIDTH,SCREEN_HEIGHT])
        #设置窗口的标题
        pygame.display.set_caption("坦克大战1.03")
        while True:
            #给窗口设置一个填充色
            Maingame.window.fill(BG_COLOR)
            #获取事件
            self.getEvent()
            Maingame.window.blit(self.getTextSuface('敌方坦克剩余数量%d'%6),(11,11))
            pygame.display.update()
    #结束游戏
    def endGame(self):
         print('谢谢使用，欢迎再次使用')
         exit()
    #左上角的文字绘制
    def getTextSuface(self,text):
        #初始化字体模块
        pygame.font.init()
        #查看所有的字体的名称
        #print(pygame.font.get_fonts())
        #获取字体Font的对象
        font=pygame.font.SysFont('kaiti',18)
        #绘制文本信息
        textSurface=font.render(text,True,TEXT_COLOR)
        return textSurface
    #获取事件
    def getEvent(self):
        #获取所有事件
        eventList=pygame.event.get()
        #遍历事件
        for event in eventList:
        #判断按下的键盘是关闭还是键盘按下
           if event.type==pygame.QUIT:
                  self.endGame()
           if event.type==pygame.KEYDOWN:
               #判断按下的是上，下，左，右
                if event.key==pygame.K_LEFT:
                    print('按下左键，坦克向左移动')
                elif event.key==pygame.K_RIGHT:
                    print('按下右键，坦克向右移动')
                elif event.key == pygame.K_UP:
                    print('按下上键，坦克向上移动')
                elif event.key == pygame.K_DOWN:
                    print('按下下键，坦克向下移动')


class Tank():
    def __init__(self):
        pass
    #移动
    def move(self):
        pass
    #射击
    def shot(self):
        pass
    #展示坦克的方法
    def displayTank(self):
        pass
#我方坦克
class MyTank(Tank):
    #添加距离左边left 距离上边top
    def __init__(self):
        self,images={}
 #敌方坦克
class EnemyTank(Tank):
    def __init__(self):
        pass
#子弹类
class Bullet():
    def __init__(self):
        pass
    #移动
    def move(self):
        pass
    #展示子弹的方法
    def displayBullet(self):
        pass
    pass
#墙壁类
class Wall():
    def __init__(self):
        pass
    #展示墙壁的方法
    def displayWall(self):
        pass
#爆炸类
class Explode():
    def __init__(self):
        pass
    #展示爆炸的方法
    def  dispalyExplode(self):
      pass
#音乐类
class Music():
    def __init__(self):
        pass
    #播放音乐
    def play(self):
        pass
if __name__=='__main__':
     Maingame().startgame()

   # Maingame().getTextSuface()