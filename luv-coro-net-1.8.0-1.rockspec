package = "luv-coro-net"
version = "1.8.0-1"
source = {
    url = "git://github.com/alikefia/luv-coro-net.git",
    tag = version
}
description = {
    homepage = "https://github.com/alikefia/luv-coro-net",
    summary = "luv net coroutine wrapper",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "luv ~> 1.8",
    "luv-coro-channel ~> 1.8"
}
build = {
    type = "builtin",
    modules = {
        ["luv-coro-net"] = "init.lua"
    }
}
