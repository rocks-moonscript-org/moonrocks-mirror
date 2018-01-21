package = 'lua-csnappy'
version = '0.1.5-1'
source = {
    url = 'http://github.com/fperrad/lua-csnappy/raw/releases/lua-csnappy-0.1.5.tar.gz',
    md5 = '6326474b2faa1e7a8335145b9ba0c105',
    dir = 'lua-csnappy-0.1.5',
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
    copy_directories = { 'docs', 'test' },
}
