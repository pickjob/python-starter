#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import traceback
from PySide6.QtCore import QRunnable, QThreadPool, Signal

class Task(QRunnable):
    '''
    fn: 调用函数
    signals: 任务信号
    args: 参数列表
    kwargs: 命名参数列表
    '''

    def __init__(self, fn, errorSignal=Signal(str), finishSignal=Signal(), *args, **kwargs):
        super(Task, self).__init__()

        self.fn = fn
        self.args = args
        self.kwargs = kwargs
        self.errorSignal = errorSignal
        self.finishSignal = finishSignal

    def run(self):
        try:
            self.fn(*self.args, **self.kwargs)
        except:
            traceback.print_exc()
            self.errorSignal.emit(f"{self.fn} catch error")
        finally:
            self.finishSignal.emit()

def add_task(task: Task):
    QThreadPool.globalInstance().start(task)