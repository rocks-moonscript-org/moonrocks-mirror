rockspec_format = '3.0'
package = 'realpath'
version = '0.2.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-realpath.git',
    tag = 'v0.2.0',
}
description = {
    summary = 'canonicalize the pathname.',
    homepage = 'https://github.com/mah0x211/lua-realpath',
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
        realpath = {
            sources = { 'src/realpath.c' }
        },
    }
}
