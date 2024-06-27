#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# json
# 
# json.dump(obj, fp, *, skipkeys=False, ensure_ascii=True, check_circular=True, allow_nan=True, cls=None, indent=None, separators=None, default=None, sort_keys=False, **kw)
# 
# json.load(fp, *, cls=None, object_hook=None, parse_float=None, parse_int=None, parse_constant=None, object_pairs_hook=None, **kw)
import json

if __name__ == '__main__':
    # 序列化
    json.dumps({'msg': 'hello world'})
    # 反序列化
    json.loads('{"msg": "hello world"}')
    # 序列化到文件
    with open('data.json', 'w') as f:
        json.dump({'msg': 'hello world'}, f)
    # 从文件中反序列化
    with open('data.json', 'r') as f:
        data = json.load(f)