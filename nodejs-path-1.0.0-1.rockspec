package = 'nodejs-path'
version = '1.0.0-1'
source = {
    url = 'git://github.com/shemiakin/lua-nodejs-path',
    tag = 'v1.0.0',
}
description = {
    summary = 'Pure Lua file and directory path utilities',
    detailed = [[
The module provides utilities for working with file and directory paths. Works similarly to the native NodeJS Path module.

Quickstart:

    local path = require('nodejs-path')
    local filepath = path.join('somedir', 'somefile.txt')
    print('File path: ' .. filepath)
    print('Is absolute: ' .. tostring(path.isAbsolute(filepath)))
    print('File name: ' .. path.parse(filepath).name)

See full documentation at GitHub https://github.com/shemiakin/lua-nodejs-path
    ]],
   homepage = 'https://github.com/shemiakin/lua-nodejs-path',
   maintainer = 'Maxim Shemiakin <maxim.shemiakin@gmail.com>',
   license = 'MIT'
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ['nodejs-path'] = 'nodejs-path.lua'
    }
}
