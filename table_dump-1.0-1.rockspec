package = "table_dump"
version = "1.0-1"
source = {
    url = "git://github.com/suikabreaker/lua-table-dump",
    tag = "v1.0",
}
description = {
    summary = "function to dump a lua table",
    detailed = [[
        A function to dump a lua table in proper format.
    ]],
    homepage = "https://github.com/suikabreaker/lua-table-dump",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        cdata_table = "src/table_dump.lua"
    }
}