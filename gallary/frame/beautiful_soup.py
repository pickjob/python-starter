#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import bs4

htmlText = """
<html>
<head>Header</head>
<body>
    <a href="/www.baidu.com">Go To Baidu</a>
</body>
</html>
"""

soup = bs4.BeautifulSoup(htmlText, 'html5lib')
for a in soup.select('a'):
    print(a.string)
    print(a['href'])
