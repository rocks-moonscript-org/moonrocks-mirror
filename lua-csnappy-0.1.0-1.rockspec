package = 'lua-csnappy'
version = '0.1.0-1'
source = {
    url = 'http://github.com/downloads/fperrad/lua-csnappy/lua-csnappy-0.1.0.tar.gz',
    md5 = '72742ab97af9e288d241781e4697428e',
    dir = 'lua-csnappy-0.1.0',
}
description = {
    summary = "a fast compressor/decompressor",
    detailed = [[
        lua-csnappy is a binding of the csnappy library which implements the Google's Snappy (de)compressor.
    ]],
    homepage = 'http://fperrad.github.com/lua-csnappy/',
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
