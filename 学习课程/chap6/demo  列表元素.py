# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/6/12 23:03
print('--------append 列表末尾添加一个元素----------')
list=[10,20,30]
print('添加元素之前',list,id(list))
list.append(100)
print('添加元素之后',list,id(list))
print('-------extend  在列表的末尾至少添加一个元素----------')
list2=['hello','world']
list.append(list2)
print(list)
list.extend(list2)
print(list)

print('-----insert  在列表任意位置添加一个元素---------')
list.insert(1,90)
print(list)
print('---切片  在列表任意位置添加至少一个元素---[切掉替换]-')
list3=[True,False,'hello']
list[1:]=list3
print(list)