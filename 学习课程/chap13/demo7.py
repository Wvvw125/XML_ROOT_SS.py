# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/9/26  22:38
class Animal(object):
    def eat(self):
        print('动物会吃')
class Dog(Animal):
    def eat(self):
      print('狗吃骨头')
class Cat(Animal):
    def eat(self):
      print('猫吃鱼')

class Person:
    def eat(self):
        print('人吃五谷杂粮')


#定义一个函数
def fun(obj):
    obj.eat()

#开始调用函数
fun(Cat())
fun(Dog())
fun(Animal())
print('-------')
fun(Person())