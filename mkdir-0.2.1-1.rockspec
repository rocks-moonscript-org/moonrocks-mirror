rockspec_format = '3.0'
package = 'mkdir'
version = '0.2.1-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-mkdir.git',
    tag = 'v0.2.1',
}
description = {
    summary = 'make directories.',
    homepage = 'https://github.com/mah0x211/lua-mkdir',
    license = 'MIT/X11',
    maintainer = 'Masatoshi Fukunaga'
}
dependencies = {
    'lua >= 5.1',
    'lauxhlib >= 0.1.0',
}
build = {
    type = 'builtin',
    modules = {
        mkdir = {
            sources = { 'src/mkdir.c' }
        },
    }
}
