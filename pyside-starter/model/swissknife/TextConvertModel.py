#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from common import Task, add_task

import base64
from enum import IntEnum
from PySide6.QtCore import QAbstractListModel, QByteArray, QModelIndex, Qt, Signal, Slot
from PySide6.QtQml import QmlElement

QML_IMPORT_NAME = "starter.model.swissknife"
QML_IMPORT_MAJOR_VERSION = 1

class RoleName(IntEnum):
    DISPLAY_ROLE = Qt.UserRole
    VALUE_ROLE = Qt.UserRole + 1

class ConvertFormat(IntEnum):
    BASE64 = 1

    @classmethod
    def from_value(cls, convertFormatValue: int):
        return cls(convertFormatValue)

@QmlElement
class TextConvertModel(QAbstractListModel):
    _supported_format = []

    error = Signal(str)
    result = Signal(str)
    finish = Signal()

    def __init__(self, parent=None):
        super().__init__(parent)
        self._supported_format = list(ConvertFormat)

    def roleNames(self):
        default = super().roleNames()
        default[RoleName.DISPLAY_ROLE] = QByteArray(b"DisplayRole")
        default[RoleName.VALUE_ROLE] = QByteArray(b"ValueRole")
        return default
    
    def rowCount(self, parent=QModelIndex()):
        return len(self._supported_format)
    
    def data(self, index: QModelIndex, role=Qt.DisplayRole):
        row = index.row()
        if row < self.rowCount():
            if role == RoleName.DISPLAY_ROLE:
                return self._supported_format[row].name
            elif role == RoleName.VALUE_ROLE:
                return self._supported_format[row].value
            else:
                print(f"missing role: {role}")
                return None
    
    def convert(self, convertFormat: ConvertFormat, input: str):
        match convertFormat:
            case ConvertFormat.BASE64:
                output = base64.b64encode(input.encode(encoding='utf-8')).decode(encoding='utf-8')
                self.result.emit(output)
            case _:
                print("Missing convert format")

    @Slot(int, str)
    def submitConvertTask(self, format, input):
        task = Task(self.convert, self.error, self.finish, format, input)
        add_task(task)