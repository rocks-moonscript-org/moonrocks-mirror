package = 'lua-ubjson'
version = '0.1.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-ubjson/raw/releases/lua-ubjson-0.1.0.tar.gz',
    md5 = '0adaea1aa623f5347997d8fe4defce82',
    dir = 'lua-ubjson-0.1.0',
}
description = {
    summary = "a pure Lua implementation of UBJSON",
    detailed = [[
The UBJSON is a data interchange format.
It is a binary form directly imitating JSON, but requiring fewer bytes of data.

lua-ubjson is aligned with the Draft 12 specifications.
    ]],
    homepage = 'https://fperrad.frama.io/lua-ubjson/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['ubjson']     = 'src/ubjson.lua',
    },
    copy_directories = { 'docs', 'test' },
}
