#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# 
# class class_name:
#       魔法方法:
#           初始化:
#               def __new__(cls[, ...]):
#               def __init__(self[, ...]):
#
#           运算符重载:
#               def __lt__(self, other):
#               def __le__(self, other):
#               def __eq__(self, other):
#               def __ne__(self, other):
#               def __gt__(self, other):
#               def __ge__(self, other):
#  
#           属性:
#               def __getattribute__(self, name): 获得属性, 优先调用
#               def __getattr__(self, name): 获得属性, __getattribute__失败调用
#               def __setattr__(self, name, value): 设置属性
#               def __delattr__(self, name): 删除属性
# 
#           实例属性: 允许动态添加
#               def __get__(self, instance, cls):
#                   if instance is None:
#                       return self
#                   else:
#                       return instance.__dict__[self.name]
#               def __set__(self, instance, value):
#                   instance.__dict__[self.name] = value
#               def __del__(self):
#                   del instance.__dict__[self.name]
# 
#           元素:
#               def __len__(self): 元素个数
#               def __contains__(self, item): 存在
#               def __getitem__(self, key): 获得元素
#               def __setitem__(self, key, value): 设置元素
#               def __delitem__(self, key): 删除元素
# 
#           迭代: 
#               def __iter__(self):
#               def __next__(self):
#                   # throw StopIteration if no more items
# 
#           上下文管理:
#               def __enter__(self):
#               def __exit__(self, exception_type, exception_value, traceback):
# 
#           字符表达:
#               def __repr__(self):
#               def __str__(self):
# 