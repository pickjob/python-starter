#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import logging
import logging.config
import os
import pathlib
import shutil
import sqlite3
import sys

usage = """
    python3 docset.py type name version docLocation
        type:
            java
"""

sys.path.append(os.getcwd())
if os.path.isfile('logging.conf'):
    if not os.path.isdir('logs'):
        os.mkdir('logs')
    logging.config.fileConfig('logging.conf')
logger = logging.getLogger()

if __name__ == '__main__':
    if len(sys.argv) < 5:
        logger.error('error arguement number!')
        logger.info(usage)
        sys.exit(-1)
    docset_type = sys.argv[1]
    docset_name = sys.argv[2]
    docset_version = sys.argv[3]
    docset_orgin = sys.argv[4]
    src_path = pathlib.Path(docset_orgin)
    dest_path = src_path.parent.joinpath(src_path.name + '.docset')
    if not dest_path.exists():
        dest_path.mkdir()
    with open(str(dest_path) + '/meta.json', 'w') as f:
        meta_json = f'''{{
    "name": "{docset_name}",
    "title": "{docset_name}",
    "version": "{docset_version}",
    "revision": "0"
}}
'''
        f.write(meta_json)
    content_path = dest_path.joinpath('Contents')
    if not content_path.exists():
        content_path.mkdir()
    with open(str(content_path) + '/Info.plist', 'w') as f:
        info = f'''<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleName</key>
    <string>{docset_name}</string>
    <key>DocSetPlatformFamily</key>
    <string>{docset_name}</string>
    <key>dashIndexFilePath</key>
    <string>index.html</string>
    <key>isJavaScriptEnabled</key>
    <true/>
</dict>
</plist>
'''
        f.write(info)
    resource_path = content_path.joinpath('Resources')
    if not resource_path.exists():
        resource_path.mkdir()
    docset_idx = resource_path.joinpath('docSet.dsidx')
    conn = sqlite3.connect(str(docset_idx))
    cursor = conn.cursor()
    cursor.execute('DROP TABLE IF EXISTS searchIndex')
    cursor.execute(
        'CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT)')
    document_path = resource_path.joinpath('Documents')
    if not document_path.exists():
        document_path.mkdir()
    shutil.copytree(str(src_path), str(document_path), dirs_exist_ok=True)
    # javadoc 处理
    if docset_type == 'java':
        all_classes_path = document_path.joinpath(
            'allclasses-index.html')
        if all_classes_path.exists():
            soup = bs4.BeautifulSoup(all_classes_path.read_text(), 'html5lib')
            for a in soup.select('td.colFirst a:nth-child(1)'):
                name = a.string
                title = a['title']
                path = a['href']
                type = 'Unknown'
                if title.startswith('class'):
                    type = 'Class'
                elif title.startswith('interface'):
                    type = 'Interface'
                elif title.startswith('enum'):
                    type = 'Enum'
                elif title.startswith('annotation'):
                    type = 'Annotation'
                else:
                    logger.error('unmatch type {title}')
                cursor.execute(
                    f"INSERT INTO searchIndex(name, type, path) VALUES ('{name}', '{type}', '{path}')")
        all_packages_path = document_path.joinpath(
            'allpackages-index.html')
        if all_packages_path.exists():
            soup = bs4.BeautifulSoup(all_packages_path.read_text(), 'html5lib')
            for a in soup.select('th.colFirst a:nth-child(1)'):
                name = a.string
                path = a['href']
                type = 'Package'
                cursor.execute(
                    f"INSERT INTO searchIndex(name, type, path) VALUES ('{name}', '{type}', '{path}')")
        overview_summary_path = document_path.joinpath(
            'index.html')
        if overview_summary_path.exists():
            soup = bs4.BeautifulSoup(
                overview_summary_path.read_text(), 'html5lib')
            for a in soup.select('th.colFirst a:nth-child(1)'):
                name = a.string
                path = a['href']
                type = 'Module'
                if 'module-summary' in path:
                    cursor.execute(
                        f"INSERT INTO searchIndex(name, type, path) VALUES ('{name}', '{type}', '{path}')")
                    logger.info(
                        f"INSERT INTO searchIndex(name, type, path) VALUES ('{name}', '{type}', '{path}')")
    conn.commit()
    conn.close()
