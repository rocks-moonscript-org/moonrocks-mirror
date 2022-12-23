package = "cache-redis"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-cache-redis.git",
    tag = "v0.1.0",
}
description = {
    summary = "cache storage module with redis backend.",
    homepage = "https://github.com/mah0x211/lua-cache-redis",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "cache >= 1.3.0",
    "metamodule >= 0.4",
    "redis >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["cache.redis"] = "redis.lua",
    },
}

