#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# re
#       方法
#           编译:
#               re.compile(pattern, flags=0)
#           查找:
#               re.search(pattern, string, flags=0)
#               re.findall(pattern, string, flags=0)
#               re.finditer(pattern, string, flags=0)
#           匹配:
#               re.match(pattern, string, flags=0)
#               re.fullmatch(pattern, string, flags=0)
#           分割:
#               re.split(pattern, string, maxsplit=0, flags=0)
#           替换:
#               re.sub(pattern, repl, string, count=0, flags=0)
# re.Pattern
#       方法:
#           查找:
#               Pattern.search(string[, pos[, endpos]])
#               Pattern.findall(string[, pos[, endpos]])
#               Pattern.finditer(string[, pos[, endpos]])
#           匹配:
#               Pattern.match(string[, pos[, endpos]])
#               Pattern.fullmatch(string[, pos[, endpos]])
#           分割:
#               Pattern.split(string, maxsplit=0)
#           替换:
#               Pattern.sub(repl, string, count=0)
# re.Match
#       方法:
#           Match.group([group1, ...])
#           Match.groups(default=None)
#           Match.start([group])¶
#           Match.end([group])