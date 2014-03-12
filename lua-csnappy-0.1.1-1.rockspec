package = 'lua-csnappy'
version = '0.1.1-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-csnappy-0.1.1.tar.gz',
    md5 = '6820ebd91dfd5ad139a93f308d8f9de9',
    dir = 'lua-csnappy-0.1.1',
}
description = {
    summary = "a fast compressor/decompressor",
    detailed = [[
        lua-csnappy is a binding of the csnappy library which implements the Google's Snappy (de)compressor.
    ]],
    homepage = 'http://fperrad.github.io/lua-csnappy/',
    maintainer = 'Francois Perrad',
    license = 'BSD'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = "builtin",
    modules = {
        snappy = {
            sources = "lsnappy.c",
        },
    },
    copy_directories = { 'doc', 'test' },
}
