package = "lua-resty-ksuid"
version = "1.0.0-4"
source = {
    url = "git://github.com/maqtulio/lua-resty-ksuid",
    tag = "v1.0.0"
}
description = {
    summary = "KSUID Generator for Lua",
    detailed = [[
        A KSUID (K-Sortable Unique Identifier) generator for Lua.
        Uses OpenSSL for cryptographic randomness and Base62 encoding.
    ]],
    homepage = "git://github.com/maqtulio/lua-resty-ksuid",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "lua-resty-openssl >= 0.8.0"
}
build = {
    type = "builtin",
    modules = {
        ["ksuid"] = "src/ksuid.lua"
    }
}
