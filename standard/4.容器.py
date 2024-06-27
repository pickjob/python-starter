#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# 序列: list tuple range
#       通用支持:
#           索引: seq[index]
#           切片:
#               seq[start:end:step]
#               del s[i:j:k]
#           相加: seq1 + seq2 (append)
#           相乘: seq * No. (repeat)
#           是否存在:
#               item in seq
#               item not in seq
#           内置函数:
#               len(seq)
#               max(seq) / min(seq)
#           方法:
#               s.append(x)
#               s.insert(i, x)
#               s.pop() / s.pop(i)
#               s.remove(x)
#               s.clear()
#               s.reverse()
# 列表: list
#       列表生成表达式:
#           [out_exp for out_exp in input_list if out_exp]
#           [x * x for x in range(10)]
#           [(x, y) for x in range(3) for y in range(3)]
#           [b + '+' + g for b in boys for g in girls if b[0] == g[0]]
# 元组: tuple
#       (1, 2, 3)
# 不重复列表: set
#       {'apple', 'orange'}
# 字典: dict
#       {'a': 'v1', 'b': 'v2'}
#       方法:
#           get(key)
#           keys() / values() / items()
#       字典申城表达式:
#           { i: "{} squared is {}".format(i, i**2) for i in range(10)}