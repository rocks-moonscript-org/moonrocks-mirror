package = "configh"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-configh.git",
    tag = "v0.1.0",
}
description = {
    summary = "lua-configh is a helper module that generates config.h file.",
    homepage = "https://github.com/mah0x211/lua-configh",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "gcfn >= 0.3.0",
    "metamodule >= 0.4.1",
    "io-truncate >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["configh"] = "lib/configh.lua",
        ["configh.executor"] = "lib/executor.lua",
    },
}
