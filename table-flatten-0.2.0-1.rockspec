package = "table-flatten"
version = "0.2.0-1"
source = {
    url = "git://github.com/mah0x211/lua-table-flatten.git",
    tag = "v0.2.0"
}
description = {
    summary = "flatten a table into a table of specified depth.",
    homepage = "https://github.com/mah0x211/lua-table-flatten",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["table.flatten"] = "flatten.lua"
    }
}

