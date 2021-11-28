package = "isa"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-isa.git",
    tag = "v0.2.0"
}
description = {
    summary = "type checking utility module",
    homepage = "https://github.com/mah0x211/lua-isa",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "ioex >= 0.2.0",
}
build = {
    type = "builtin",
    modules = {
        isa = "isa.lua"
    }
}
