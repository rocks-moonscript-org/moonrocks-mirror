package = 'lua-ConciseSerialization-lua53'
version = '0.2.3-1'
source = {
    url = 'https://framagit.org/fperrad/lua-ConciseSerialization/raw/releases/lua-conciseserialization-0.2.3.tar.gz',
    md5 = '6a57318fe91558d408fb01daacbe66fd',
    dir = 'lua-ConciseSerialization-0.2.3',
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
    'lua >= 5.3',
}
build = {
    type = 'builtin',
    modules = {
        ['CBOR']     = 'src5.3/CBOR.lua',
    },
    copy_directories = { 'docs', 'test' },
}
