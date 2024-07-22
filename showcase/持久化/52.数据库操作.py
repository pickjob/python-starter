#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# DB-API 2.0
#       方法:
#           connect(parameters...): Connection
#               dsn
#               user
#               password
#               host
#               database
#       对象
#           Connection
#               cursor(): Cursor
#               commit()
#               rollback()
#               close()
#           Cursor
#               rowcount
# 
#               execute(operation [, parameters]): 执行一个SQL操作——可能指定参数
#               executemany( operation, seq_of_parameters)
#               callproc(procname [, parameters ]): 使用指定的参数调用指定的数据库过程
#               fetchone(): 以序列的方式取回查询结果中的下一行, 如果没有更多的行, 就返回None
#               fetchmany([size=cursor.arraysize])
#               fetchall()
#               close()
# 
# sqlite3
#       sqlite3.connect(database, timeout=5.0, detect_types=0, isolation_level='DEFERRED', check_same_thread=True, factory=sqlite3.Connection, cached_statements=128, uri=False, *, autocommit=sqlite3.LEGACY_TRANSACTION_CONTROL)
# sqlite3.Connection
#       autocommit
#       isolation_level: "DEFERRED", "IMMEDIATE", "EXCLUSIVE"
#       cursor(factory=Cursor): Cursor
#       execute(sql, parameters=(), /): Cursor
#       executemany(sql, parameters, /): Cursor
#       executescript(sql_script, /): Cursor
#       commit()
#       rollback()
#       getconfig(op, /)
#       setconfig(op, enable=True, /)
#       close()
# sqlite3.Cursor
#       rowcount
#       execute(sql, parameters=(), /)
#       executemany(sql, parameters, /)
#       executescript(sql_script, /)
#       fetchone()
#       fetchmany(size=cursor.arraysize)
#       fetchall()
#       close()
# sqlite3.Row
#       key()
import sqlite3

if __name__ == '__main__':
    con = sqlite3.connect("name.db")
    dict = {}
    with con:
        cur = con.cursor()
        for row in cur.execute("SELECT col1, col2 FROM table_name "):
            dict[row[0]] = row[1]