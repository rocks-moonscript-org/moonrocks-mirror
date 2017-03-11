package = 'lua-ConciseSerialization'
version = '0.2.0-1'
source = {
    url = 'http://github.com/fperrad/lua-ConciseSerialization/raw/releases/lua-conciseserialization-0.2.0.tar.gz',
    md5 = '61f2d58e64b4e4b582b8f022c935dc54',
    dir = 'lua-ConciseSerialization-0.2.0',
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
