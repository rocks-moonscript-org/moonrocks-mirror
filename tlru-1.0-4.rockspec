package = "tlru"
version = "1.0-4"
source = {
    url = "git://github.com/liaozhaoyan/tlru",
}
description = {
    summary = "lua lru ttl library.",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/tlru",
    detailed = [[
 Lru implemented based on lua, supports ttl parameters.
 ]],
}
dependencies = {
    "lua >= 5.1",
    "lrbtree >= 1.0-1",   
}
build = {
    type = "builtin",
    modules = {
        ['tlru'] = "tlru.lua",
    },
}