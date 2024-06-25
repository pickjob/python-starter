#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
from pathlib import Path

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

import model.swissknife.TextConvertModel

if __name__ == "__main__":
    QGuiApplication.setApplicationName("pyside-starter")
    QGuiApplication.setOrganizationName("pyside.starter")
    QGuiApplication.setOrganizationDomain("pyside.starter")

    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    qml_file = os.fspath(Path(__file__).resolve().parent / 'view.qml')
    engine.load("view/main.qml")

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())