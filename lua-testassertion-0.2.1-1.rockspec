package = 'lua-TestAssertion'
version = '0.2.1-1'
source = {
    url = 'https://framagit.org/fperrad/lua-TestAssertion/raw/releases/lua-testassertion-0.2.1.tar.gz',
    md5 = 'c6b789bfc3518c6b1745359294213f6a',
    dir = 'lua-TestAssertion-0.2.1',
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
