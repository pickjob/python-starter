#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import mysql.connector

config = {
    'user': 'root',
    'password': 'chinese',
    'host': '127.0.0.1',
    'database': 'sample',
    'raise_on_warnings': True
}

cnx = mysql.connector.connect(**config)
cursor = cnx.cursor()

try:
    # query
    cursor.execute('SELECT id, field1, field2 FROM table_name')
    for (id, field1, field2) in cursor:
        print("id: {id}, field1: {field1}, field2: {field2}")
    sql = ("INSERT INTO table_name"
        "（field1, field2)"
        "VALUES"
        "(%s, %s)"
    )
    cursor.execute(sql, ('val1', 'val2'))
    id = cursor.lastrowid
    # update
    cursor.execute('update table_name set field_nmae = new_value where a = a')

    cnx.commit()
except mysql.connector.Error as err:
    print(err)
cursor.close()
cnx.close()
