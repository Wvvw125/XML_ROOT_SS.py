# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/9/1  22:23
class Student:     #student 为类的名称（类名）由一个或者多个单词组成，每个单词的首字母大写,其余小写
    native_place='四川'  #直接写在类里的变量，称为类属性
    def __init__(self,name,age):
      self.name=name  #self.name 称为实体属性，进行了一个赋值的操作，将局部变量name的值赋给实体属性
      self.age=age
    '''实例方法'''
    def eat(self):
      print('大家在吃屎')

     # 静态方法
    @staticmethod
    def method():
          print('我使用了staticmethod进行了修饰，所以我是静态方法')
    #类方法
    @classmethod
    def cm(cls):
        print('我是类方法，因为我使用了classmethod进行修饰')

def drink():
    print('喝水')



#在类之外定义称为函数，在类之内定义的称为方法

#Python 中一切皆对象 ，student 是对象吗？ 内存有开空间吗？

stu1=Student('张三',20)
print(id(stu1))
print(type(stu1))
print(stu1)
print('---------------')
print(id(Student))
print(type(Student))
print(Student)


