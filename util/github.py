#!/usr/bin/python3
# -*- coding: utf-8 -*-
import requests
from bs4 import BeautifulSoup
import os
import subprocess

def cloneAllRepo(repo, dirs):
    repos = []
    url = f'/{repo}?tab=repositories'
    scanPage(url, repos)
    print('总计: ', len(repos))
    d = f'{dirs}/{repo}'
    if not os.path.exists(d):
        os.makedirs(d)
    for repo in repos:
        u = f'https://github.com{repo}.git'
        print(f'clone git repo url: {u}')
        subprocess.call(['git clone %s' % u], shell=True, cwd=d)

def scanPage(url, li):
    u = f'https://github.com{url}'
    print(u)
    r = requests.get(u)
    soup = BeautifulSoup(r.text, 'html.parser')
    for a in soup.select('#user-repositories-list ul li a[itemprop="name codeRepository"]'):
        li.append(a['href'])
    for a in soup.select('#org-repositories ul li a[itemprop="name codeRepository"]'):
        li.append(a['href'])
    for nextPage in soup.select('a.next_page'):
        scanPage(nextPage['href'], li)
