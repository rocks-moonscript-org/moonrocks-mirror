package = "lua-minittp"
version = "0.1-2"
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
        minittp_engine = "src/minittp_engine.lua",
        minittp_fcgi = "src/minittp_fcgi.lua"
    },
    install = {
        bin = {
            "bin/minittp-server"
        }
    },
}
