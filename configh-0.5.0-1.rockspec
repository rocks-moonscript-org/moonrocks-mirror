package = "configh"
version = "0.5.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-configh.git",
    tag = "v0.5.0",
}
description = {
    summary = "lua-configh is a helper module that generates config.h file.",
    homepage = "https://github.com/mah0x211/lua-configh",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
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
        ["configh.gchook"] = "lib/gchook.lua",
        ["configh.generate"] = "lib/generate.lua",
        ["configh.isfile"] = "lib/isfile.lua",
        ["configh.sortiter"] = "lib/sortiter.lua",
    },
}
