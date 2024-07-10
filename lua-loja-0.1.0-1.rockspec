package = 'lua-Loja'
version = '0.1.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-loja/raw/releases/lua-loja-0.1.0.tar.gz',
    md5 = 'b857a3039681bd07d83c7dfd463b015a',
    dir = 'lua-Loja-0.1.0',
}
description = {
    summary = "transparent persistence with a key/value store",
    detailed = [[
With this module, a LMDB (Lightning Memory-Mapped Database) ie. a key/value store on disk, is mapped on a Lua table.
Keys and values are serialized/stringified before storage (by default, with the UBJSON format).
    ]],
    homepage = 'https://fperrad.frama.io/lua-loja',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.2',
    'lightningmdb',
    'lua-ubjson',
}
build = {
    type = 'builtin',
    modules = {
        ['Loja']                = 'src/Loja.lua',
    },
    copy_directories = { 'docs', 'test' },
}
