#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# 赋值:
#       var = val
#       解包:
#           first, *middle, last = list
# 算数运算符:
#       + - * / : 加减乘除
#       // ：出发去除小数
#       % : 取余
#       ** : 乘方（求幂)
# 
# 逻辑运算符:
#       and / or / not
#       is / is not
#       < / <= / > / >= / == / !=
# 
# 循环、判断
#       # if
#       if condition express:
#           pass
#       elif condition express:
#           pass
#       else:
#           pass
#       # for
#       for item in list:
#           pass
#       for key, value in dict.items():
#           pass
#       # while
#       while condition express:
#           pass
#       # match
#       match var:
#           case condition express:
#               pass
#           case condition express:
#               pass
#           case _:
#               pass
#       # break / continue
# 
# 函数
#       def func_name(leading_args, *args, **kwargs):
#           print(f'Required argument: {leading_args}')
#           for v in args:
#               print (f'Optional argument (args): {v}')
#           for k, v in kwargs.items():
#               print (f'Optional argument {k} (kwargs): {v}')
#       #lambda
#       lambda x: x * x
# 
# 异常处理
#       # try
#       try:
#           pass
#       except BaseException as e:
#           print('Exception:', e)
#       else:
#           pass
#       finally:
#           pass
#       # with
#       with open('file.txt', 'w') as file:
#           file.write('hello world !')