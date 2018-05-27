package = "lua-minittp"
version = "0.1-1"
source = {
    url = "git+https://github.com/tjeb/lua-minittp"
}
description = {
    summary = "A minimalistic web framework",
    detailed = [[
        Work in progress.
    ]],
    homepage = "https://github.com/tjeb/lua-minittp",
    license = "GPLv3",
    maintainer = "Jelte Jansen <minittp@tjeb.nl>",
}
dependencies = {
    "copas",
    "luaposix",
}
build = {
    type = "builtin",
    modules = {
        minittp = "src/minittp.lua",
        minittp_util = "src/minittp_util.lua",
        minittp_io = "src/minittp_io.lua",
    },
    install = {
        bin = {
            "bin/minittp-server"
        }
    },
}
