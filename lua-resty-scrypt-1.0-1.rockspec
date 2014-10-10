package = "lua-resty-scrypt"
version = "1.0-1"
source = {
    url = "git://github.com/bungle/lua-resty-scrypt.git",
    branch = "v1.0"
}
description = {
    summary = "LuaJIT FFI-based scrypt library for OpenResty.",
    detailed = "lua-resty-scrypt is a scrypt (password) hashing library for OpenResty.",
    homepage = "https://github.com/bungle/lua-resty-scrypt",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.scrypt"]          = "lib/resty/scrypt.lua"
    }
}
