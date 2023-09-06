package = "context"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-context.git",
    tag = "v0.2.0",
}
description = {
    summary = "The context module provides golang-like context functionality.",
    homepage = "https://github.com/mah0x211/lua-context",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "time-clock >= 0.4.0",
    "errno >= 0.3.0",
    "metamodule >= 0.4.0",
}
build = {
    type = "builtin",
    modules = {
        context = "context.lua",
    },
}
