package = 'lua-CodeGen-LPeg'
version = '0.3.1-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-codegen-0.3.1.tar.gz',
    md5 = 'cbbe4fd78cf2b8311cb832d389919051',
    dir = 'lua-CodeGen-0.3.1',
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
    homepage = 'http://fperrad.github.com/lua-CodeGen',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lpeg >= 0.10',
}
build = {
    type = 'builtin',
    modules = {
        ['CodeGen']             = 'src.lpeg/CodeGen.lua',
        ['CodeGen.Graph']       = 'src/CodeGen/Graph.lua',
    },
    copy_directories = { 'doc', 'test' },
}
