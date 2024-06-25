package = "lua-dataclass"
version = "1.0-1"
source = {
    url = "git://github.com/jigordev/lua-dataclass.git",
    branch = "master",
}
description = {
    summary = "A simple yet powerful dataclass implementation for Lua, inspired by Python's dataclasses.",
    detailed = [[
        This library allows you to define data structures with minimal boilerplate, supports immutability, type validation, default values, and more.
    ]],
    license = "MIT",
    homepage = "https://github.com/jigordev/lua-dataclass",
    maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["dataclass"] = "src/init.lua",
        ["dataclass.dataclass"] = "src/dataclass.lua",
        ["dataclass.field"] = "src/field.lua",
        ["dataclass.utils"] = "src/utils.lua",
    },
}
