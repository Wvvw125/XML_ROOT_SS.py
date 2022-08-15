# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/13 22:23
print('--sort()列表排序，不产生新的列表对象--')
list=[20,40,10,98,54]
print('排序前的列表内容',list,id(list))
#开始排序  ，调用列表对象的sort方法，升序排序
list.sort()  #原列表基础上进行排序，不改变位置,不产生一个新的列表对象
print('排序后的列表',list,id(list))

#通过指定的关键字参数，将列表中的元素进行降序排序
list.sort(reverse=True)      #reverse=False是降序排序    reverse=False是升序排序
print(list)
list.sort(reverse=False)
print(list)


print('---使用内置函数sorted()对列表进行排序，将产生一个新的列表对象----')
list1=[20,40,10,98,54]
print('原列表',list1)
#开始排序
new_list1=sorted(list1)
print(list1)
print(new_list1)
desc_list=sorted(list1,reverse=True)
print(desc_list)
desc_list=sorted(list1,reverse=False)
print(desc_list)