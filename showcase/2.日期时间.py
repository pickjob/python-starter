#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# datetime
# 
# 格式化、时间解析格式: %Y-%m-%d %H:%M:%S
# 
# datetime.date(year, month, day)
#       date.today()
#       date.fromtimestamp(timestamp)
# 
#       strftime(format)
# 
# datetime.time(hour=0, minute=0, second=0, microsecond=0, tzinfo=None, *, fold=0)
#       strftime(format)
# 
# datetime.datetime(year, month, day, hour=0, minute=0, second=0, microsecond=0, tzinfo=None, *, fold=0)
#       datetime.today()
#       datetime.now(tz=None)
#       datetime.fromtimestamp(timestamp, tz=None)
#       datetime.strptime(date_string, format)
# 
#       strftime(format)
# 
# time
#       time.sleep(secs)
#       time.strftime(format[, t])
#       time.strptime(string[, format])
# 
# datetime.timedelta(days=0, seconds=0, microseconds=0, milliseconds=0, minutes=0, hours=0, weeks=0)
import datetime

if __name__ == '__main__':
    # 当前日期
    current_date = datetime.date.today()
    # 当前时间
    now = datetime.datetime.now()
    # 日期时间格式化
    now.strftime('%Y-%m-%d %H:%M:%S')
    # 解析日期时间
    datetime.datetime.strptime('2020-07-22 21-46-49', '%Y-%m-%d %H-%M-%S')
    # 日期时间加减计算
    delta = datetime.timedelta(
        days=50,
        # hours=,
        # minutes=,
        # seconds=,
    )
    print(current_date - delta)
