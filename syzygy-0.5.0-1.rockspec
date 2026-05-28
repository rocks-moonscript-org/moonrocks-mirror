package = "syzygy"
version = "0.5.0-1"
source = {
    url = "git+https://github.com/Tsukina-7mochi/syzygy.git",
    tag = "v0.5.0",
}
description = {
    summary = "A tiny, Jest-like testing library for Lua",
    license = "MIT",
    homepage = "https://github.com/Tsukina-7mochi/syzygy",
}
dependencies = {
    "lua >= 5.3",
}
build = {
    type = "builtin",
    modules = {
        ["syzygy"] = "src/syzygy/init.lua",
        ["syzygy.expect"] = "src/syzygy/expect.lua",
        ["syzygy.toDebugString"] = "src/syzygy/toDebugString.lua",
    },
}
