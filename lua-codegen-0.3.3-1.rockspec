package = 'lua-CodeGen'
version = '0.3.3-1'
source = {
    url = 'https://framagit.org/fperrad/lua-CodeGen/raw/releases/lua-codegen-0.3.3.tar.gz',
    md5 = '7235b9975f650a606b5116b94b4b435f',
    dir = 'lua-CodeGen-0.3.3',
}
description = {
    summary = "a template engine",
    detailed = [[
        lua-CodeGen is a "safe" template engine.

        lua-CodeGen enforces a strict Model-View separation.

        lua-CodeGen allows to split template in small chunk,
        and encourages the reuse of them by inheritance.

        lua-CodeGen is not dedicated to HTML,
        it could generate any kind of textual code.
    ]],
    homepage = 'https://fperrad.frama.io/lua-CodeGen',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['CodeGen']             = 'src/CodeGen.lua',
        ['CodeGen.Graph']       = 'src/CodeGen/Graph.lua',
    },
    copy_directories = { 'docs', 'test' },
}
