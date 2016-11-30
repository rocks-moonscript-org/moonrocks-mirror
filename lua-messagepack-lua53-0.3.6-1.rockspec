package = 'lua-MessagePack-lua53'
version = '0.3.6-1'
source = {
    url = 'http://github.com/fperrad/fperrad.github.io/raw/master/dist/lua-messagepack-0.3.6.tar.gz',
    md5 = '0c94b2e2e7f4757eb5cc4cbac7aeabd2',
    dir = 'lua-MessagePack-0.3.6',
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
