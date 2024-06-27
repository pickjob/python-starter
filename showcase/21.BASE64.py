#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# 
# base64
# 
# base64.b64encode(s, altchars=None)
# base64.urlsafe_b64encode(s)
# 
# base64.b64decode(s, altchars=None, validate=False)
# base64.urlsafe_b64decode(s)
import base64

if __name__ == '__main__':
    base64_str = base64.b64encode("hello world".encode(encoding="utf-8")).decode(encoding="utf-8")
    print(base64_str)
    print(base64.b64decode(base64_str.encode(encoding="utf-8")).decode(encoding="utf-8"))