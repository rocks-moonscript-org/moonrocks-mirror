package = "string-format-all"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-string-format-all.git",
    tag = "v0.2.0",
}
description = {
    summary = "A submodule of the lua-string-format module.",
    homepage = "https://github.com/mah0x211/lua-string-format-all",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "dump >= 0.1.2",
    "string-format >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["string.format.all"] = "all.lua",
    },
}
