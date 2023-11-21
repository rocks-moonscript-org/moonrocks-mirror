package = 'lua-ConciseSerialization'
version = '0.2.4-1'
source = {
    url = 'https://framagit.org/fperrad/lua-ConciseSerialization/raw/releases/lua-conciseserialization-0.2.4.tar.gz',
    md5 = '3fac9bf2292f42ca2f9c04dd05214b82',
    dir = 'lua-ConciseSerialization-0.2.4',
}
description = {
    summary = "a pure Lua implementation of CBOR / RFC8949",
    detailed = [[
The Concise Binary Object Representation (RFC 8949) is a data format
whose design goals include the possibility of extremely small code size,
fairly small message size, and extensibility without the need for version
negotiation.

It's a pure Lua implementation, without dependency.
    ]],
    homepage = 'https://fperrad.frama.io/lua-ConciseSerialization/',
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
