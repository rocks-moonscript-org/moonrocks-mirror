package = "luautils"
version = "1.0-0"
source = {
    url = "git+ssh://git@github.com:AHAOAHA/luautils.git",
    branch = "develop"
}
description = {
    homepage = "https://github.com/AHAOAHA/luautils",
    license = "MIT License"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        ["luautils.table"] = "script/table.lua",
        ["luautils.io"] = "script/io.lua",
    }
}