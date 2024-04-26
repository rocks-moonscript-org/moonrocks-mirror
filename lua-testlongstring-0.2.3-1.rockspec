package = 'lua-TestLongString'
version = '0.2.3-1'
source = {
    url = 'https://framagit.org/fperrad/lua-TestLongString/raw/releases/lua-testlongstring-0.2.3.tar.gz',
    md5 = 'a98d580ac5c1c8584ceb07509e936a5f',
    dir = 'lua-TestLongString-0.2.3',
}
description = {
    summary = "an extension for testing long string",
    detailed = [[
        lua-TestLongString is a port of the Perl5 module Test::LongString.

        It is an extension of lua-TestMore.

        It provides functions for comparing and testing strings
        that are not in plain text or are especially long.
    ]],
    homepage = 'https://fperrad.frama.io/lua-TestLongString/',
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
        ['Test.LongString']     = 'src/Test/LongString.lua',
    },
    copy_directories = { 'docs', 'test' },
}
