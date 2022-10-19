package = 'moon-cache'
version = '1.1.0-1'
source  = {
    url    = 'git+https://github.com/peick/lua-moon-cache.git',
    branch = '1.1.0',
}
description = {
    summary  = "TTL cache",
    homepage = 'https://github.com/peick/lua-moon-cache/',
    license  = 'GPL',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',

    modules = {
        ['moon.cache.ttl'] = 'cache/ttl.lua',
    }
}
