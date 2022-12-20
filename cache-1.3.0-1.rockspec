package = "cache"
version = "1.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-cache.git",
    tag = "v1.3.0",
}
description = {
    summary = "general-purpose cache module.",
    homepage = "https://github.com/mah0x211/lua-cache",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "minheap >= 0.2",
    "metamodule >= 0.4",
}
build = {
    type = "builtin",
    modules = {
        cache = "cache.lua",
    },
}

