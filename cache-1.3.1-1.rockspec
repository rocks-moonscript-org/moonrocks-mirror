package = "cache"
version = "1.3.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-cache.git",
    tag = "v1.3.1",
}
description = {
    summary = "pluggable cache storage module.",
    homepage = "https://github.com/mah0x211/lua-cache",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.14.0",
    "minheap >= 0.2",
    "metamodule >= 0.4",
    "yyjson >= 0.5.0",
}
build = {
    type = "builtin",
    modules = {
        cache = "cache.lua",
        ["cache.inmem"] = "lib/inmem.lua",
    },
}

