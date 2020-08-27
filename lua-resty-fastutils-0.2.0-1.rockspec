package = "lua-resty-fastutils"
version = "0.2.0-1"
source = {
    url = "https://luarocks.org/manifests/zencore/lua-resty-fastutils-0.2.0-1.src.rock"
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
        ["resty.fastutils.httputils"] = "lua/httputils.lua",
        ["resty.fastutils.redisutils"] = "lua/redisutils.lua",
    }
}