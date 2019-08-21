#!/usr/bin/env lua

package = 'simpleitk'
version = '1.2.2-0'
source  = {
    url    = 'https://github.com/SimpleITK/SimpleITKLuaRock/archive/v1.2.2.zip',
    dir = 'SimpleITKLuaRock-1.2.2',
}
description = {
    summary  = "A Lua binding to SimpleITK.",
    detailed = '',
    homepage = 'https://github.com/SimpleITK/SimpleITKLuaRock',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build    = {
    type = 'cmake',
    modules = {
        SimpleITK = "SimpleITK-build/Wrapping/Lua/lib/SimpleITK.so",
    },
    variables = {
        INSTALL_CMOD      = "$(LIBDIR)",
        CMAKE_BUILD_TYPE  = "$(CMAKE_BUILD_TYPE)",
        ["CFLAGS:STRING"] = "$(CFLAGS)",
        SimpleITK_VERSION = "1.2.2"
    },
    copy_directories = { "doc", "examples" }
}
