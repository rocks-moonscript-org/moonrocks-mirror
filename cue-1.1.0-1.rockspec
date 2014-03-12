package = "cue"
version = "1.1.0-1"
description = {
    summary = "A cuesheet parser for Lua.",
    detailed = [[
        A cuesheet parser for Lua.
    ]],
    license = "CC0",
    homepage = "http://github.com/TheLinx/LuaCue",
    maintainer = "Linus Sjögren <thelinx@unreliablepollution.net>"
}
dependencies = {
    "lua >= 5.1",
    "cl >= 20100607",
}
source = {
    url = "git://github.com/TheLinx/LuaCue.git",
    branch = "1.1.0"
}
build = {
    type = "builtin",
    modules = {
        cue = "cue/init.lua"
    }
}
