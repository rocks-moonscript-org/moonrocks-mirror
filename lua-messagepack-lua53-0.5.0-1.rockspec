package = 'lua-MessagePack-lua53'
version = '0.5.0-1'
source = {
    url = 'http://github.com/fperrad/lua-MessagePack/raw/releases/lua-messagepack-0.5.0.tar.gz',
    md5 = '4b11342bc7de22aaa9e5c73233b746f7',
    dir = 'lua-MessagePack-0.5.0',
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
