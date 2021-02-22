package = 'lua-TestAssertion'
version = '0.1.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-TestAssertion/raw/releases/lua-testassertion-0.1.0.tar.gz',
    md5 = '834a22f5ad3116d3c9911ed4e4d15ff3',
    dir = 'lua-TestAssertion-0.1.0',
}
description = {
    summary = "TestMore with Lua friendly assertions",
    detailed = [[
        It is an extension of lua-TestMore.

        It provides many Lua friendly assertions.
    ]],
    homepage = 'https://fperrad.frama.io/lua-TestAssertion/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lua-testmore >= 0.3.0',
}
build = {
    type = 'builtin',
    modules = {
        ['Test.Assertion']      = 'src/Test/Assertion.lua',
    },
    copy_directories = { 'docs', 'test' },
}
