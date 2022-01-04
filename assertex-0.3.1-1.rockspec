rockspec_format = '3.0'
package = 'assertex'
version = '0.3.1-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-assertex.git',
    tag = 'v0.3.1'
}
description = {
    summary = 'simple assertion module for lua',
    homepage = 'https://github.com/mah0x211/lua-assertex',
    license = 'MIT/X11',
    maintainer = 'Masatoshi Fukunaga',
}
dependencies = {
    'lua >= 5.1',
    'mah0x211/dump >= 0.1.1',
    'mah0x211/isa >= 0.1.0',
    'mah0x211/regex >= 0.1.0',
}
build = {
    type = 'builtin',
    modules = {
        assertex = 'assertex.lua',
        ['assertex.escape'] = {
            sources = { "src/escape.c" }
        },
        ['assertex.torawstring'] = {
            sources = { "src/torawstring.c" }
        },
        ['assertex.lightuserdata'] = {
            sources = { "src/lightuserdata.c" }
        },
    },
}
