# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/27  21:44
s={10,20,30,405,60}
'''集合判断'''
print(10 in s)
print(100 in s)
print(10 not  in s)
print(100 not  in s)
'''集合元素的新增操作'''
s.add(80)   #add 一次添加一个元素
print(s)
s.update({200,300,400}) # update 一次至少添加一个元素
print(s)
s.update([45,56,768,89])
print(s)
s.update((11,47,76))
print(s)
s.remove(10)
print(s)
# s.remove(500)  #KeyError,元素不存在 报错
s.discard(500)    #不存在，不报错
print(s)
s.pop()
s.pop()
# s.pop(400)  # TypeError: pop() takes no arguments (1 given)  不能添加参数
print(s)
s.clear()   #清空
print(s)
