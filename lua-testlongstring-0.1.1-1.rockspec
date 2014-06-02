package = 'lua-TestLongString'
version = '0.1.1-1'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-TestLongString/lua-testlongstring-0.1.1.tar.gz',
    md5 = 'da34faa31b1f6fd277b382115cf8e161',
    dir = 'lua-TestLongString-0.1.1',
}
description = {
    summary = "an extension for testing long strings",
    detailed = [[
        lua-TestLongString is a port of the Perl5 module Test::LongString.
        It is an extension of lua-TestMore, providing functions for
        comparing and testing strings that are not in plain text or are especially long.
    ]],
    homepage = 'http://testlongstring.luaforge.net/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lua-testmore >= 0.2.0',
}
build = {
    type = 'builtin',
    modules = {
        ['Test.LongString']     = 'src/Test/LongString.lua',
    },
    copy_directories = { 'doc', 'test' },
}
