package = 'lua-ConciseSerialization-lua53'
version = '0.2.1-2'
source = {
    url = 'https://framagit.org/fperrad/lua-ConciseSerialization/raw/releases/lua-conciseserialization-0.2.1.tar.gz',
    md5 = 'e0fc87c1796b044c8af73f522cbc95c8',
    dir = 'lua-ConciseSerialization-0.2.1',
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
    homepage = 'http://fperrad.frama.io/lua-ConciseSerialization/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.3',
}
build = {
    type = 'builtin',
    modules = {
        ['CBOR']     = 'src5.3/CBOR.lua',
    },
    copy_directories = { 'docs', 'test' },
}
