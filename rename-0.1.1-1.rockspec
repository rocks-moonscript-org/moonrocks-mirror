package = "rename"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-rename.git",
    tag = "v0.1.1",
}
description = {
    summary = "change the name of a file.",
    homepage = "https://github.com/mah0x211/lua-rename",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "fstat >= 0.2.2",
    "mkdir >= 0.2.2",
    "string-split >= 0.3.0",
}
build = {
    type = "builtin",
    modules = {
        rename = "rename.lua",
    },
}
