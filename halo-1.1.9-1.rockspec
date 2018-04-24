package = "halo"
version = "1.1.9-1"
source = {
    url = "git://github.com/mah0x211/lua-halo.git",
    tag = "v1.1.9"
}
description = {
    summary = "Simple OOP Library For Lua",
    homepage = "https://github.com/mah0x211/lua-halo",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "dump >= 0.1.1",
    "loadchunk >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        halo                = "halo.lua",
        ['halo.util']       = 'lib/util.lua',
        ['halo.registry']   = 'lib/registry.lua',
        ['halo.class']      = 'lib/class.lua'
    }
}
