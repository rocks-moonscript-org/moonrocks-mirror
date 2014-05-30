package = 'lua-TestLongString'
version = '0.2.0-2'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-TestLongString/lua-testlongstring-0.2.0.tar.gz',
    md5 = '5f906fc2f05a81f47d97a0646dce7281',
    dir = 'lua-TestLongString-0.2.0',
}
description = {
    summary = "an extension for testing long string",
    detailed = [[
        lua-TestLongString is a port of the Perl5 module Test::LongString.

        It is an extension of lua-TestMore.

        It provides functions for comparing and testing strings
        that are not in plain text or are especially long.
    ]],
    homepage = 'http://fperrad.github.com/lua-TestLongString/',
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
    copy_directories = { 'doc', 'test' },
}
