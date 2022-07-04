package = "isa"
version = "0.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-isa.git",
    tag = "v0.3.0",
}
description = {
    summary = "type checking utility module",
    homepage = "https://github.com/mah0x211/lua-isa",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.5.0",
}
build = {
    type = "builtin",
    modules = {
        isa = "isa.lua",
        ["isa.isfile"] = {
            sources = {
                "src/isfile.c",
            },
        },
    },
}

