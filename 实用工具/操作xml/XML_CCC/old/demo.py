# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/2/10 14:12
# post  请求（携带了参数）
# 响应数据是一组 jason 数据
class Cc(object):
#class 是关键字（表示要开始创建类了），Cc是新建的类名称，object为类的继承，没有合适的继承类用object类，这是所有类最终会继承的类
    def aa(self):#aa被称为函数或者方法,self表示创建实例本身，所以就可以把各种属性绑定到self
        print('aa')##实现的功能
    def bb(self):
        self.aa()#同class下def调用


class Student(object):
    def __init__(self, name, score):#第一个参数是self，实例化时不用实际传参，self在__init__里面代表实例的本身，后面的参数正常传递
        self.name = name
        self.score = score

    def get_grade(self):
        if self.score >= 90:#格式，self.参数名
            print('A')
            return 'A'
        elif self.score >= 60:
            return 'B'
        else:
            return 'C'
    def Name(self):
        if self.score >= 90:
            print(f'{self.name}')
if __name__=='__main__':
 #  Cc().bb()#self,不需要传递参数
    Student1=Student('问问', 94)# 实例化类Student，参数实例化后，类下的所有方法，都可以调用实例参数
    Student1.get_grade()
    Student1.Name()
