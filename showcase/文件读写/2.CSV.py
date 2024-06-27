#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# csv
# 
# csv.reader(csvfile, dialect='excel', **fmtparams)
# 
# csv.writer(csvfile, dialect='excel', **fmtparams)
# 
# csv.list_dialects()
# 
# Dialect:
#       Dialect.strict: False
#       Dialect.delimiter: , 字段分隔符
#       Dialect.lineterminator: \r\n 换行符
#       Dialect.escapechar: NONE 转义符
#       Dialect.quotechar: " 引用符
#       Dialect.quoting: 
#       Dialect.doublequote: True
#       Dialect.skipinitialspace: False
import csv

if __name__ == '__main__':
    # 读
    with open('eggs.csv', newline='') as csvfile:
        csv_reader = csv.reader(csvfile, delimiter=' ', quotechar='|')
        for row in csv_reader:
            print(', '.join(row))
    # 写
    with open('eggs.csv', 'w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile, delimiter=' ', quotechar='|', quoting=csv.QUOTE_MINIMAL)
        csv_writer.writerow(['Spam'] * 5 + ['Baked Beans'])
        csv_writer.writerow(['Spam', 'Lovely Spam', 'Wonderful Spam'])
