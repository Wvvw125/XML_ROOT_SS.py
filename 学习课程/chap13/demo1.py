# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/9/14  22:24
class Car:
    def __init__(self,brand):
        self.brand=brand
    def start(self):
        print('汽车已启动...')

car=Car('宝马X5')
car.start()
print(car.brand)