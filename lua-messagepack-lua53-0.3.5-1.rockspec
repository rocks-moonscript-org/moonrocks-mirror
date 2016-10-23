package = 'lua-MessagePack-lua53'
version = '0.3.5-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-messagepack-0.3.5.tar.gz',
    md5 = '00f5819b06e071696848776fefb6f9a7',
    dir = 'lua-MessagePack-0.3.5',
}
description = {
    summary = "a pure Lua implementation of the MessagePack serialization format",
    detailed = [[
        MessagePack is an efficient binary serialization format.

        It lets you exchange data among multiple languages like JSON but it's faster and smaller.
    ]],
    homepage = 'http://fperrad.github.io/lua-MessagePack/',
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
