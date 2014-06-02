package = 'lua-TestLongString'
version = '0.1.3-2'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-TestLongString/lua-testlongstring-0.1.3.tar.gz',
    md5 = 'e6f5ccd4a6c0b7a5b844c4e284ceceda',
    dir = 'lua-TestLongString-0.1.3',
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
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['Test.LongString']     = 'src/Test/LongString.lua',
    },
    copy_directories = { 'doc', 'test' },
}
