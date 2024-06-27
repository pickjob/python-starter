#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import logging
import logging.config

if __name__ == '__main__':
    logging.config.fileConfig('./logging.conf')
    logger = logging.getLogger('main')
    # debug, info, warning, error, critical
    name = 'world'
    logger.info(f'hello, {name}')