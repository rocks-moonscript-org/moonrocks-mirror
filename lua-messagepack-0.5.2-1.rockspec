package = 'lua-MessagePack'
version = '0.5.2-1'
source = {
    url = 'https://framagit.org/fperrad/lua-MessagePack/raw/releases/lua-messagepack-0.5.2.tar.gz',
    md5 = '471b0bc4cc868aecfcf170c1bf89fea1',
    dir = 'lua-MessagePack-0.5.2',
}
description = {
    summary = "a pure Lua implementation of the MessagePack serialization format",
    detailed = [[
        MessagePack is an efficient binary serialization format.

        It lets you exchange data among multiple languages like JSON but it's faster and smaller.
    ]],
    homepage = 'https://fperrad.frama.io/lua-MessagePack/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['MessagePack']     = 'src/MessagePack.lua',
    },
    copy_directories = { 'docs', 'test' },
}
