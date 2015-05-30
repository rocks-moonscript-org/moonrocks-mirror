package = 'lua-csnappy'
version = '0.1.3-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-csnappy-0.1.3.tar.gz',
    md5 = '60163422c2b0d71338880e54d17ee8dc',
    dir = 'lua-csnappy-0.1.3',
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
