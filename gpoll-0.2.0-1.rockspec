package = "gpoll"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-gpoll.git",
    tag = "v0.2.0",
}
description = {
    summary = "A generic interface module for synchronous I/O multiplexing processing.",
    homepage = "https://github.com/mah0x211/lua-gpoll",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "io-wait >= 0.1.0",
    "nanosleep >= 0.2.0",
    "signal >= 1.5.0",
}
build = {
    type = "builtin",
    modules = {
        gpoll = "gpoll.lua",
    },
}
