rockspec_format = '3.0'
package = 'ioex'
version = '0.2.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-ioex.git',
    tag = 'v0.2.0',
}
description = {
    summary = 'additional features to the io module.',
    homepage = 'https://github.com/mah0x211/lua-ioex',
    license = 'MIT/X11',
    maintainer = 'Masatoshi Fukunaga',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ioex = 'ioex.lua',
        ['ioex.file'] = {
            sources = { 'src/file.c' },
            incdirs = { 'deps/lauxhlib' },
        },
        ['ioex.fileno'] = {
            sources = { 'src/fileno.c' },
            incdirs = { 'deps/lauxhlib' },
        },
        ['ioex.isfile'] = {
            sources = { 'src/isfile.c' },
            incdirs = { 'deps/lauxhlib' },
        },
    }
}
