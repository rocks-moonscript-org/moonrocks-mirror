package = "string-token"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-string-token.git",
    tag = "v0.2.0",
}
description = {
    summary = "Verifiable string token module.",
    homepage = "https://github.com/mah0x211/lua-string-token",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "hmac >= 0.2.0",
    "string-random >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["string.token"] = "token.lua",
    },
}
