#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# 
# open('path/to/file', mode, encoding)
#       mode:
#           'r': 读
#           'w': 写
#           '+': 读写
#           'a': 追加
#           'x': 独占
#           't': 文本
#           'b': 二进制
#       方法:
#           seek(offset[, whence])
#           read(readNum)
#           readline()
#           write()
#           close()
#       特定语法:
#           with open(filename) as f:
#               for line in f:
#                   process(line)
# 