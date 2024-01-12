package = "gpoll"
version = "0.9.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-gpoll.git",
    tag = "v0.9.0",
}
description = {
    summary = "A generic interface module for synchronous I/O multiplexing processing.",
    homepage = "https://github.com/mah0x211/lua-gpoll",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.12.0",
    "errno >= 0.4.0",
    "io-wait >= 0.4.0",
    "signal >= 1.6.0",
    "time-sleep >= 0.2.1",
}
build = {
    type = "builtin",
    modules = {
        gpoll = "gpoll.lua",
    },
}
