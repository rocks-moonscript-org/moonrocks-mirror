package = "NynDB"
version = "1.0-1"
source = {
    url = "https://github.com/nyn0dev/nyndb/archive/refs/tags/v1.zip"
}
description = {
    summary = "NynDB - Simple Lua database library",
    detailed = [[
        NynDB is a simple library for manipulating Lua tables as a database.
        Supports init, add, delete, modify, reset, list, get, find, count, keys,
        updateWhere, deleteWhere, export, import, saveToFile, and loadFromFile.
    ]],
    homepage = "https://github.com/nyn0dev/nyndb",
    license = "MIT"
}
dependencies = {}
build = {
    type = "builtin",
    modules = {
        ["NynDB"] = "NynDB.lua"
    }
}
