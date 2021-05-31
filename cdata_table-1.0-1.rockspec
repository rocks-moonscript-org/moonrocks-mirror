package = "cdata_table"
version = "1.0-1"
source = {
    url = "git://github.com/suikabreaker/cdata-table",
    tag = "v1.0",
}
description = {
    summary = "table type which is able to use cdata as index",
    detailed = [[
        cdata_table allows you to use cdata to index table (by value).
    ]],
    homepage = "https://github.com/suikabreaker/cdata-table",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        cdata_table = "src/cdata_table.lua",
        ["cdata_table.util"] = "src/cdata_table/util.lua"
    }
}