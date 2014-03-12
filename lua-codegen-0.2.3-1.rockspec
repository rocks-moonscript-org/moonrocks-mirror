package = 'lua-CodeGen'
version = '0.2.3-1'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-CodeGen/lua-codegen-0.2.3.tar.gz',
    md5 = '03f5db242f3343baded7c61a70994537',
    dir = 'lua-CodeGen-0.2.3',
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
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['CodeGen']             = 'src/CodeGen.lua',
        ['CodeGen.Graph']       = 'src/CodeGen/Graph.lua',
        ['CodeGen.lpeg']        = 'src/CodeGen/lpeg.lua',
    },
    copy_directories = { 'doc', 'test' },
}
