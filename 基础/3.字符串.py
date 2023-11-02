#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# 
# 字符串: str
#       原始字符串
#           r"C:\path\to\something"
#       长字符串
#           '''
#               long long text
#           '''
#       拼接字符串
#           "Hello" + "world"
#       字符串模板
#           f'Hello {name}'
#       方法
#           字符判断
#               str.find(sub[, start[, end]])
#               str.index(sub[, start[, end]]): find一致, 找不到会抛异常
#               str.startswith(prefix[, start[, end]]) / str.endswith(suffix[, start[, end]])
#               
#               str.isascii() / str.isalpha()
#               str.isdigit() / str.isdecimal() / str.isnumeric()
#               str.isalnum()
#               str.isidentifier()
#               str.isupper() / str.islower() / str.istitle()
#               str.isspace() / str.isprintable()
#               
#           转换
#               str.center(width[, fillchar])
#               str.upper() / str.lower()
#               str.join(iterable)
#               str.strip([chars]) / str.lstrip([chars]) / str.rstrip([chars]): 去空格
#               str.removeprefix(prefix, /) / str.removesuffix(suffix, /)
#               str.replace(old, new[, count]): 替换
#               str.split(sep=None, maxsplit=- 1): 分割
# 
#           编码
#               str.encode(encoding='utf-8', errors='strict')
# 
