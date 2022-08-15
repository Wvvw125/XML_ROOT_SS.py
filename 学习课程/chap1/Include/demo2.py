# 执行机构：At home at college
# 出 品 人：🌫⭐※
# 开发时间:2021/5/3 22:51
#转义字符
print('hello\nworld')    #   \  +转义字符的首字母  n-->newline的首字母表示换行
print('hello\tworld')
print('helloooo\tworld')
print('hello\rworld')      # world 将对hello进行了覆盖
print('hello\bworld')   #  \b  是退一个格，将e退没了

print('http:\\\\www.baid.com')
print('老师说:\'大家好\'')


#原字符，不希望字符串中的转义字符起作用，就使用原字符，就是字符串之前加R或者r
print(R'hello\bworld')