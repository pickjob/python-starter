#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import logging
import logging.config

if __name__ == '__main__':
    logging.config.fileConfig('./logging.conf')
    logger = logging.getLogger('main')
    logger.info('hello world')
