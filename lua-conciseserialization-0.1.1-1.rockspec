package = 'lua-ConciseSerialization'
version = '0.1.1-1'
source = {
    url = 'http://github.com/fperrad/lua-ConciseSerialization/raw/releases/lua-conciseserialization-0.1.1.tar.gz',
    md5 = '8d415a77d830ef77e27fd1a3a1305407',
    dir = 'lua-ConciseSerialization-0.1.1',
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
