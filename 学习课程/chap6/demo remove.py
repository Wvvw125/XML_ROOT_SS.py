# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/12 23:19
list=[10,20,30,40,50,60,30]
list.remove(30)#移除列表总的一个元素，有重复元素，只移除第一个元素
print(list)
#list.remove(100)
#print(list)

print('-------pop()根据索引移除元素--')
list.pop(1)
print(list)
#list.pop(5)   IndexError: pop index out of range
list.pop()  #不指定参数将删除 列表最后一个参数
print(list)


print('--切片操作，删除至少一个元素，将产生一个新的列表对象---')
new_list=list[1:3]
print('原列表',list)
print('切片后的列表',new_list)
'''不产生新的列表对象，而是删除原列表中的内容'''
list[1:3]=[]  #空列表替代
print(list)
print('---清楚列表中的所有元素--')
list.clear()
print(list)
print('--del语句将列表对象删除--')
del list
print()