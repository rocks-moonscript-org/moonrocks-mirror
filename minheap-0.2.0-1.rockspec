package = "minheap"
version = "0.2.0-1"
source = {
    url = "git://github.com/mah0x211/lua-minheap.git",
    tag = "v0.2.0"
}
description = {
    summary = "min-heap module",
    homepage = "https://github.com/mah0x211/lua-minheap",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        minheap = "minheap.lua"
    }
}
