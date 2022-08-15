# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/7/18  13:24
#判断字符串的操作方法
'''是否合法字符.isidentifier'''
s='hello,python'
print('1.',s.isidentifier())
print('2.','hello'.isidentifier())
print('3.','张三'.isidentifier())
print('4.','张三_123'.isidentifier())

'''是否全部空白字符组成'''
print('5.','\t'.isspace())
'''是否全部由字母组成'''
print('6.','abc'.isalpha())
print('7.','张三'.isalpha())
print('8.','张三_1'.isalpha())
'''是否全部由十进制数字组成'''
print('9.','123'.isdecimal())
print('10.','123四'.isdecimal())
print('11.','ⅡⅢⅣⅢⅡⅡ'.isdecimal())
'''是否全是数字组成'''
print('12.','123'.isnumeric())
print('13.','123四'.isnumeric())
print('14.','ⅢⅡⅣⅤⅦ'.isnumeric())
'''是否全是字母数字组成'''
print('15.','acb2'.isalnum())
print('16.','张三234'.isalnum())
print('17.','abc!'.isalnum())