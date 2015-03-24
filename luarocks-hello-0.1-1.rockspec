package = 'luarocks-hello'
version = '0.1-1'
source = {
    url = 'git://github.com/xiaq/luarocks-hello.git',
    tag = 'v0.1',
}
description = {
    summary = 'A sample addon for LuaRocks.',
    license = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ["luarocks.addon.hello"] = 'src/hello.lua'
    },
}
