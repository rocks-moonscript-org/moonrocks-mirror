package = 'lua-MessagePack-lua53'
version = '0.4.0-1'
source = {
    url = 'http://github.com/fperrad/lua-MessagePack/raw/releases/lua-messagepack-0.4.0.tar.gz',
    md5 = '3307b523912393f6d8d0c41065bf397f',
    dir = 'lua-MessagePack-0.4.0',
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
