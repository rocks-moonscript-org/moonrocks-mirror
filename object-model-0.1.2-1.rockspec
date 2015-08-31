package = 'object-model'
version = '0.1.2-1'
source = {
    url = 'git://github.com/ShiraNai7/lua-object-model.git',
    tag = 'v0.1.2',
}
description = {
    summary = "Simple object model implementation in Lua",
    detailed = [[
        Simple object model implementation in Lua.

        Inspired by http://lua-users.org/wiki/SimpleLuaClasses
    ]],
    homepage = 'https://github.com/ShiraNai7/lua-object-model',
    maintainer = 'ShiraNai7',
    license = 'MIT',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['ObjectModel'] = 'src/ObjectModel.lua',
    },
}