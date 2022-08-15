# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/9/14  22:29
class Student:
    def __init__(self,name,age):
        self.name=name
        self.__age=age  #年龄不希望在类的爱步被使用，所以加了两个————
    def show(self):
        print(self.name,self.__age)

stu=Student('张三',20)
stu.show()

#在类的外面使用name 与age
print(stu.name)
# print(stu.__age)

# print(dir(stu))
print(stu._Student__age)#在类的外部可以通过  ， _Student__age 进行访问