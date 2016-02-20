package = "families"
version = "0.1-1"
source = {
    url = "https://github.com/GorgonzolaPasta/families",
    tag = "v0.1"
}
description = {
    summary = "families.lua stands for a familial Lua",
    detailed = [[
        It also tries to be an object orierted module for Lua.
    ]],
    homepage = "",
    license = "MIT"
}
dependencies = {
    "lua ~> 5.1"
}
build = {
    type = "builtin",
    modules = {
        families = "families.lua"
    }
}