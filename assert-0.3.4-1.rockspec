rockspec_format = '3.0'
package = 'assert'
version = '0.3.4-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-assert.git',
    tag = 'v0.3.4',
}
description = {
    summary = 'simple assertion module for lua',
    homepage = 'https://github.com/mah0x211/lua-assert',
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
        assert = 'assert.lua',
        ['assert.escape'] = {
            sources = { "src/escape.c" }
        },
        ['assert.torawstring'] = {
            sources = { "src/torawstring.c" }
        },
        ['assert.lightuserdata'] = {
            sources = { "src/lightuserdata.c" }
        },
    },
}
