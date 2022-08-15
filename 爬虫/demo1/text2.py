# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/10/23  20:42
import sys
 #reload(sys)
#sys.setdefaultencoding('utf8')

def check_contain_chinese(check_str):
    for ch in check_str.decode('utf-8'):
        if u'\u4e00' <= ch <= u'\u9fff':
            print(ch)
            return True
    return False

if __name__ == "__main__":

  #  print(check_contain_chinese('i love yiu '))1
    print(check_contain_chinese(('i love you').encode('utf-8')))
    print(check_contain_chinese(('xx中国').encode('utf-8')))