#!/usr/bin/python3
# -*- coding: utf-8 -*-

from util import github

import logging
import logging.config

if __name__ == '__main__':
    logging.config.fileConfig('conf/logging.conf')
    logger = logging.getLogger('main')
    logger.info('hello world')
    github.cloneAllRepo('afsalashyana', '/home/china/code/others')