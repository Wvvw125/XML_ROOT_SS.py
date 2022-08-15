# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2022/4/24  10:09
#需求 题目：输入数组，最大的与第一个元素交换，最小的与最后一个元素交换，输出数组。
class main():
 def mlist(self):
  a=0
  L=[]
  while a<6:
    L.append(int(input('请输入数字:')))
    a+=1
  return L
def Max(list):
    max = 0
    for i in  range(1,len(list)-1):
        p=i
        if  list[p]>list[max]:
            max=p
    k=max
    list[0],list[max]=list[max],list[0]
def Min(list):
    min=0
    for i in range(1,len(list)-1):
        p=i
        if list[p]<list[i]:
            min=p
    k=min
    list[p],list[-1]=list[-1],list[p]
if __name__=="__main__":
    L=main().mlist()
    Min(L)
    Max(L)
    print(L)