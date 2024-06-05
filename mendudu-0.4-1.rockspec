package = "mendudu"
version = "0.4-1"
source = {
    url = "https://mendudu.com/mendudu-0.4-1.tar.gz",
    dir = "."
}
description = {
    summary = "Mendudu: A simple and lightweight Lua web framework",
    detailed = [[
        Mendudu is a lightweight web framework written in Lua. It allows you to set up a web server and define routes
        for handling HTTP requests. Mendudu is inspired by Node.js and provides an event-driven model with support for
        asynchronous tasks and middleware.
    ]],
    homepage = "https://mendudu.com/",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "luasocket",
    "dkjson",
    "luafilesystem",
}
build = {
    type = "builtin",
    modules = {
        mendudu = "mendudu.lua",
    },
}
