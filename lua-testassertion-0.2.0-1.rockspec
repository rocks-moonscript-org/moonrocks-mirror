package = 'lua-TestAssertion'
version = '0.2.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-TestAssertion/raw/releases/lua-testassertion-0.2.0.tar.gz',
    md5 = '352f2d4937dcda890b1b0135b6d3ee51',
    dir = 'lua-TestAssertion-0.2.0',
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
