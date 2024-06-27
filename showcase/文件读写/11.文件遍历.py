#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# 
# pathlib
# 
# pathlib.PurePath
#       name
#       suffix
#       parts
#       parent
#       parents
# 
#       joinpath(*pathsegments)
#       match(pattern, *, case_sensitive=None)
# pathlib.Path
#       classmethod Path.cwd()
#       classmethod Path.home()
#       Path.exists(*, follow_symlinks=True)
#       Path.glob(pattern, *, case_sensitive=None)
#       Path.is_file()
#       Path.is_dir()
#       Path.iterdir()
#       Path.walk(top_down=True, on_error=None, follow_symlinks=False)
#       Path.mkdir(mode=0o777, parents=False, exist_ok=False)
#       Path.rename(target)
#       Path.rmdir()
# shutil
#       shutil.copy(src, dst, *, follow_symlinks=True)
#       shutil.copyfile(src, dst, *, follow_symlinks=True)
#       shutil.copytree(src, dst, symlinks=False, ignore=None, copy_function=copy2, ignore_dangling_symlinks=False, dirs_exist_ok=False)
#       shutil.move(src, dst, copy_function=copy2)

import os

if __name__ == '__main__':
    for root, dirs, files in os.walk('/path/to'):
        for dir in dirs:
            pass
        for file in files:
            pass