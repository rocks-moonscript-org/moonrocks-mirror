package = "log.lua"
version = "0.1.0-1"
source = {
    url = "git://github.com/StephenCathcart/log.lua.git",
    tag = "v0.1.0",
}
description = {
    summary = "A tiny logging module for Lua.",
    detailed = "A tiny logging module for Lua forked from https://github.com/rxi/log.lua.",
    homepage = "https://github.com/StephenCathcart/log.lua",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        log = "log.lua",
    }
}
