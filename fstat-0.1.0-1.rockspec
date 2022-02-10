rockspec_format = '3.0'
package = 'fstat'
version = '0.1.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-fstat.git',
    tag = 'v0.1.0',
}
description = {
    summary = 'obtains information about the file pointed to by the argument.',
    homepage = 'https://github.com/mah0x211/lua-fstat',
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
        fstat = {
            sources = { 'src/fstat.c' }
        },
    }
}
