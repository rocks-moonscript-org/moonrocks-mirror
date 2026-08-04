package = "csv2lua"
version = "1.1-2"
source = {
    url = "git://github.com/Dropkickx86/csv2lua",
    tag = "v1.1-2"
}
description = {
    summary = "CSV to Lua table",
    detailed = [[
        Lua module for reading CSV and parsing to table, and parsing table to CSV.
    ]],
    homepage = "https://github.com/Dropkickx86/csv2lua"
}
dependencies = {
    "lua >= 5.1, <= 5.5"
}
build = {
    type = "builtin",
    modules = {
        csv2lua = "csv2lua.lua"
    }
}
