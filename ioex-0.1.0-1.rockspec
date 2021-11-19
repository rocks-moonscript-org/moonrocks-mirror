rockspec_format = '3.0'
package = 'ioex'
version = '0.1.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-ioex.git',
    tag = 'v0.1.0',
}
description = {
    summary = 'get the file descriptor from the lua file stream.',
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
        }
    }
}
