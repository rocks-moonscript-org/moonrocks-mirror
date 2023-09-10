package = "aghpb"
version = "1.0-0"
source = {
    url = "git://github.com/THEGOLDENPRO/aghpb.lua",
    tag = "1.0",
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
    "lua >= 5.4",
    "lua-cjson"
}
build = {
    type = "builtin",
    modules = {
        aghpb = "src/aghpb.lua",
    }
}