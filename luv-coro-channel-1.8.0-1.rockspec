package = "luv-coro-channel"
version = "1.8.0-1"
source = {
    url = "git://github.com/alikefia/luv-coro-channel.git",
    tag = version
}
description = {
    homepage = "https://github.com/alikefia/luv-coro-channel",
    summary = "luv socket event driven wrapper based on coroutines",
    detailed = [[
This library ports creationix/luv-coro-channel lit package to luarocks
    ]],
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "luv ~> 1.8"
}
build = {
    type = "builtin",
    modules = {
        ["luv-coro-channel"] = "init.lua"
    }
}
