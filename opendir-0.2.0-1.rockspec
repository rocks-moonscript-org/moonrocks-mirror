rockspec_format = '3.0'
package = 'opendir'
version = '0.2.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-opendir.git',
    tag = 'v0.2.0',
}
description = {
    summary = 'open a directory stream.',
    homepage = 'https://github.com/mah0x211/lua-opendir',
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
        opendir = {
            sources = { 'src/opendir.c' }
        },
    }
}
