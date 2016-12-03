package = 'lua-ConciseSerialization'
version = '0.1.0-1'
source = {
    url = 'http://github.com/fperrad/fperrad.github.io/raw/master/dist/lua-conciseserialization-0.1.0.tar.gz',
    md5 = 'd5fbcc58bdaa0ed6399b18ebd068f56f',
    dir = 'lua-ConciseSerialization-0.1.0',
}
description = {
    summary = "a pure Lua implementation of CBOR / RFC7049",
    detailed = [[
The Concise Binary Object Representation (RFC 7049) is a data format
whose design goals include the possibility of extremely small code size,
fairly small message size, and extensibility without the need for version
negotiation.

It's a pure Lua implementation, without dependency.
    ]],
    homepage = 'http://fperrad.github.io/lua-ConciseSerialization/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['CBOR']     = 'src/CBOR.lua',
    },
    copy_directories = { 'docs', 'test' },
}
