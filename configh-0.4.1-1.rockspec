package = "configh"
version = "0.4.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-configh.git",
    tag = "v0.4.1",
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
    "io-isfile >= 0.1.0",
    "print >= 0.3.0",
}
build = {
    type = "builtin",
    install = {
        bin = {
            ["configh"] = "bin/configh.lua",
        },
    },
    modules = {
        ["configh"] = "lib/configh.lua",
        ["configh.command"] = "lib/command.lua",
        ["configh.executor"] = "lib/executor.lua",
        ["configh.generate"] = "lib/generate.lua",
        ["configh.sortiter"] = "lib/sortiter.lua",
    },
}
