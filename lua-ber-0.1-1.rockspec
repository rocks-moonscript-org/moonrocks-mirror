package = "lua-ber"
version = "0.1-1"
source = {
    url = "git://github.com/Firanel/lua-ber",
    tag = "v0.1-1"
}
description = {
    summary = "Lua BER library",
    detailed = "BER/DER encoding and decoding in pure Lua.",
    homepage = "https://github.com/Firanel/lua-ber",
    license = "MIT"
}
dependencies = {
    "lua >= 5.3"
}
build = {
    type = "builtin",
    modules = {
        [ "lua-ber" ] = "ber.lua",
    },
}
