package = 'lua-MessagePack-lua53'
version = '0.5.4-1'
source = {
    url = 'https://framagit.org/fperrad/lua-MessagePack/raw/releases/lua-messagepack-0.5.4.tar.gz',
    md5 = '49a8609804ef615a6445f60be553e1af',
    dir = 'lua-MessagePack-0.5.4',
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
    'lua >= 5.3',
}
build = {
    type = 'builtin',
    modules = {
        ['MessagePack']     = 'src5.3/MessagePack.lua',
    },
    copy_directories = { 'docs', 'test' },
}
