package = 'lua-MessagePack'
version = '0.3.7-1'
source = {
    url = 'http://github.com/fperrad/fperrad.github.io/raw/master/dist/lua-messagepack-0.3.7.tar.gz',
    md5 = '4713937e54095ec30cc7e1eb06fd7a0d',
    dir = 'lua-MessagePack-0.3.7',
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
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['MessagePack']     = 'src/MessagePack.lua',
    },
    copy_directories = { 'docs', 'test' },
}
