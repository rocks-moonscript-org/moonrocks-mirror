package = "form-urlencoded"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-form-urlencoded.git",
    tag = "v0.2.0",
}
description = {
    summary = "encode/decode the application/x-www-form-urlencoded format.",
    homepage = "https://github.com/mah0x211/lua-form-urlencoded",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.13.0",
    "lauxhlib >= 0.6.0",
    "url >= 2.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["form.urlencoded"] = "lib/urlencoded.lua",
    },
}
