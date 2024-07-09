package = "aghpb"
version = "1.3-0"
source = {
    url = "git://github.com/THEGOLDENPRO/aghpb.lua",
    dir = "aghpb.lua",
    tag = "1.3",
}
description = {
    summary = "Anime girls holding programming books API wrapper for 🌕 Lua.",
    detailed = [[
        Lua API wrapper for the anime girls holding programming books API.
    ]],
    homepage = "https://github.com/THEGOLDENPRO/aghpb.lua",
    license = "MIT"
}
dependencies = {
    "lua >= 5.3",
    "lua-cjson",
    "luasocket",
    "luasec",
    "urlencode"
}
build = {
    type = "builtin",
    modules = {
        aghpb = "src/aghpb/init.lua",
    }
}
