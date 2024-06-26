package = "pandorabox"
version = "1.0-1"
source = {
    url = "git://github.com/jigordev/pandorabox.git",
    branch = "master",
}
description = {
    summary = "pandorabox is a Lua library for creating and managing sandbox environments.",
    detailed = [[
        pandorabox is a lightweight Lua library designed for creating and managing sandbox environments within Lua applications.
        It enables developers to isolate and control Lua code execution, providing a secure and controlled environment for running potentially untrusted code.
    ]],
    license = "MIT",
    homepage = "https://github.com/jigordev/pandorabox",
    maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["pandorabox"] = "src/pandorabox.lua",
    },
}