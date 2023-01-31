package = "cache-mdbx"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-cache-mdbx.git",
    tag = "v0.1.0",
}
description = {
    summary = "cache storage module with mdbx backend.",
    homepage = "https://github.com/mah0x211/lua-cache-mdbx",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "cache >= 1.3.0",
    "clock >= 0.1.0",
    "libmdbx >= 0.11.13",
}
build = {
    type = "builtin",
    modules = {
        ["cache.mdbx"] = "mdbx.lua",
    },
}
