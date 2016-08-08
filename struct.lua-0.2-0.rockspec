package = 'struct.lua'
version = '0.2-0'
source = {
    url = 'git://github.com/mpatraw/struct.lua',
    tag = 'v0.2'
}
description = {
    summary = 'type-checked table definitions',
    detailed = [[
    ]],
    homepage = 'http://mpatraw.github.io/struct.lua',
    license = 'ICS'
}
dependencies = {
    'lua >= 5.1, <= 5.3'
}
build = {
    type = 'builtin',
    modules = {
        ['struct'] = 'struct.lua'
    },
}
