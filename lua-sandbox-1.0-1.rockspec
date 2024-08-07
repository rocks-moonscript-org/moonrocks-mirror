package = "lua-sandbox"
version = "1.0-1"
source = {
    url = "git://github.com/jigordev/lua-sandbox.git",
    branch = "master",
}
description = {
    summary = "lua-sandbox is a Lua library for creating and managing sandbox environments.",
    detailed = [[
        lua-sandbox is a lightweight Lua library designed for creating and managing sandbox environments within Lua applications.
        It enables developers to isolate and control Lua code execution, providing a secure and controlled environment for running potentially untrusted code.
    ]],
    license = "MIT",
    homepage = "https://github.com/jigordev/lua-sandbox",
    maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["sandbox"] = "src/sandbox.lua",
    },
}