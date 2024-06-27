#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# import logging
# import time
# from functools import wraps
# 
# def timethis(func):
#     '''
#     Decorator that reports the execution time.
#     '''
#     @wraps(func)
#     def wrapper(*args, **kwargs):
#         start = time.time()
#         result = func(*args, **kwargs)
#         end = time.time()
#         print(func.__name__, end-start)
#         return result
#     return wrapper
# 带参数
# def logged(level, name=None, message=None):
#     """
#     Add logging to a function. level is the logging
#     level, name is the logger name, and message is the
#     log message. If name and message aren't specified,
#     they default to the function's module and name.
#     """
#     def decorate(func):
#         logname = name if name else func.__module__
#         log = logging.getLogger(logname)
#         logmsg = message if message else func.__name__
#         @wraps(func)
#         def wrapper(*args, **kwargs):
#             log.log(level, logmsg)
#             return func(*args, **kwargs)
#         return wrapper
#     return decorate
# 装饰器当作类
# class Profiled:
#     def __init__(self, func):
#         wraps(func)(self)
#         self.ncalls = 0
#     
#     def __call__(self, *args, **kwargs):
#         self.ncalls += 1
#         return self.__wrapped__(*args, **kwargs)
#     
#     def __get__(self, instance, cls):
#         if instance is None:
#             return self
#         else:
#             return types.MethodType(self, instance)