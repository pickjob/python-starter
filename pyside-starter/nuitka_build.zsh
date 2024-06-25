#!/usr/bin/env zsh
# 
# rcc [options] <inputs>: 编译资源文件
#       -o file
#       --generator python
#       --binary
#       --verbose
rcc --binary resource.qrc --generator python --output resource.py

# 打包程序
CC=/clang64/bin/clang nuitka3 \
    --show-progress \
    --show-memory \
    --mingw64 --clang \
    --disable-console \
    --standalone \
    --plugin-enable=pyside6 \
    --include-qt-plugin=view \
    --include-data-dir=view=view \
    --output-dir=D:/a \
    main.py