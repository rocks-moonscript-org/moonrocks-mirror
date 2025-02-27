package = "plut"
version = "0.5.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-plut.git",
    tag = "v0.5.0",
}
description = {
    summary = "path segmented lookup table",
    homepage = "https://github.com/mah0x211/lua-plut",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.8.0",
    "metamodule >= 0.5",
}
build = {
    type = "builtin",
    modules = {
        plut = "plut.lua",
    },
}
