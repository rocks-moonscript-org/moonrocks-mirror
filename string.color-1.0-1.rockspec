package = 'string.color'
version = '1.0-1'
source = {
    url = 'git://github.com/jparoz/string.color',
    tag = 'v1.0-1',
    dir = 'string.color'
}
description = {
    summary = 'An extension to the string library, providing an interface to color terminal output.',
    detailed = [[
Color extends the Lua string library, providing the method string.color.
This method provides an easy interface for coloring terminal text output.
    ]],
    homepage = 'http://github.com/jparoz/string.color',
    license = 'MIT'
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ['string.color'] = 'string.color.lua'
    }
}
