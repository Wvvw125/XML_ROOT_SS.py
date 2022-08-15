# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/9/9  21:36
class Student:
  def __init__(self,name,age):
      self.name=name
      self.age=age
  def eat(self):
      print(self.name+'在吃饭')

stu1=Student('张三',20)
stu2=Student('李四',30)

print(id(stu1))
print(id(stu2))

print('----------为stu2动态绑定性别属性----------')
stu1.gender='女'
print(stu1.name,stu1.age,stu1.gender)
#print(stu2.name,stu2.age,stu2.gender)
print(stu2.name,stu2.age)