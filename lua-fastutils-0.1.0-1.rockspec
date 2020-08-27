package = "lua-fastutils"
version = "0.1.0-1"
source = {
    url = "https://luarocks.org/manifests/zencore/lua-fastutils-0.1.0-1.src.rock"
}
description = {
    summary = "Collection of simple utils.",
}
dependencies = {
    "lua >= 5.1, < 5.4",
}
build = {
    type = "builtin",
    modules = {
        ["fastutils.strutils"] = "lua/strutils.lua",
    }
}