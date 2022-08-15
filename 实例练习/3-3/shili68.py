# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  10:28
#需求  有 n 个整数，使其前面各数顺序向后移 m 个位置，最后 m 个数变成最前面的 m 个数
class main():
 def mlist(self):
  a=0
  L=[]
  while a<8:
    L.append(int(input('请输入数字:')))
    a+=1
  return L

def move(list):
    a=int(input('请输入要移动位数：'))
    list1=list[0:a]
    for i in list1:
        list.remove(i)
    for x in  list1:
     list.append(x)
  #  while a>list.__len__():
  #      print()
    return list


if __name__=="__main__":
    L=main().mlist()
    print('移动前：',L)
    move(L)
    print('移动后',L)
