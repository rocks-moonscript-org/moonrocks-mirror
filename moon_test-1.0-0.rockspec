package = "moon_test"
version = "1.0-0"
source = {
    url = "git://github.com/tomieiro/moon_test",
    tag = "master"
}
description = {
    summary = "Lua module to provide unit tests methods",
    detailed = [[
        Lua module to provide unit tests methods.
    ]],
    homepage = "https://github.com/tomieiro/moon_test",
    license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["moon_test"] = "moontest.lua"
    }
}
