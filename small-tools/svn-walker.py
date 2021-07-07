#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import bs4
import logging
import logging.config
import os
import time
import sqlite3
import sys
import httpx
from urllib.parse import urljoin

usage = """
python svn-walk.py url targetPath user password
"""

sys.path.append(os.getcwd())
if os.path.isfile('logging.conf'):
    if not os.path.isdir('logs'):
        os.mkdir('logs')
    logging.config.fileConfig('logging.conf')
logger = logging.getLogger()


def parse_page(svn_url, conn, svn_user, svn_password):
    logger.info(f'analyze {svn_url}')
    time.sleep(1)
    if not svn_url.endswith('/'):
        svn_url = svn_url + '/'
    cursor = conn.cursor()
    cursor.execute(
        f"SELECT COUNT(1) FROM svn_repo_his WHERE url = '{svn_url}'")
    svn_repo_his_ct = cursor.fetchone()
    if svn_repo_his_ct[0] > 0:
        logger.info(f'skip url {svn_url}')
        return
    html_resp = httpx.get(svn_url, auth=(svn_user, svn_password), verify=False)
    if html_resp.status_code != 200:
        logger.error(f'Error status code: {html_resp.status_code}')
        return
    soup = bs4.BeautifulSoup(html_resp.text, 'html5lib')
    for a in soup.select('a')[1:]:
        child_name = a.string
        child_url = urljoin(svn_url, a['href'])
        if child_url.endswith('/'):
            logger.info(f'find child_url: {child_url}')
            parse_page(child_url, conn, svn_user, svn_password)
    for a in soup.select('a')[1:]:
        child_name = a.string
        child_url = urljoin(svn_url, a['href'])
        if child_url.endswith('/'):
            logger.info(f'find child_url: {child_url}')
        else:
            logger.info(f"find {child_name} url {child_url}")
            cursor.execute(
                f"INSERT INTO svn_repo(file_name, file_path) VALUES('{child_name}', '{child_url}')")
    cursor.execute(
        f"INSERT INTO svn_repo_his(url) VALUES('{svn_url}')")
    conn.commit()
    return False


if __name__ == '__main__':
    if len(sys.argv) < 5:
        logger.error('error arguement number!')
        logger.info(usage)
        sys.exit(-1)
    svn_url = sys.argv[1]
    svn_repo = sys.argv[2]
    svn_user = sys.argv[3]
    svn_password = sys.argv[4]
    conn = sqlite3.connect(svn_repo)
    cursor = conn.cursor()
    cursor.execute(
        'CREATE TABLE IF NOT EXISTS svn_repo(id INTEGER PRIMARY KEY, file_name TEXT, file_path TEXT)')
    cursor.execute(
        'CREATE TABLE IF NOT EXISTS svn_repo_his(id INTEGER PRIMARY KEY, url TEXT, create_time datetime default(current_timestamp))')
    cursor.execute(
        'CREATE INDEX IF NOT EXISTS idx_svn_repo_file_name ON svn_repo(file_name)')
    cursor.execute(
        'CREATE INDEX IF NOT EXISTS idx_svn_repo_his_file_name ON svn_repo_his(url)')
    cursor.close()
    parse_page(svn_url, conn, svn_user, svn_password)
    conn.commit()
    conn.close()
