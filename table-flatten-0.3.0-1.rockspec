package = "table-flatten"
version = "0.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-table-flatten.git",
    tag = "v0.3.0",
}
description = {
    summary = "flatten a table into a table of specified depth.",
    homepage = "https://github.com/mah0x211/lua-table-flatten",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
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

