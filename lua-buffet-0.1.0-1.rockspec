package = 'lua-buffet'
version = '0.1.0-1'
source = {
    url = 'git://github.com/un-def/lua-buffet.git',
    tag = '0.1.0',
}
description = {
    summary = 'Socket-like buffer objects for Lua',
    homepage = 'https://github.com/un-def/lua-buffet',
    license = 'MIT',
    maintainer = 'un.def <me@undef.im>',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['buffet'] = 'src/buffet.lua',
        ['buffet.init'] = 'src/buffet/init.lua',
        ['buffet.resty'] = 'src/buffet/resty.lua',
    },
}
