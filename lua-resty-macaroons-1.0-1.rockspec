package = "lua-resty-macaroons"
version = "1.0-1"
source = {
    url = "git://github.com/bungle/lua-resty-macaroons.git",
    branch = "v1.0"
}
description = {
    summary = "LuaJIT FFI Bindings to libmacaroons",
    detailed = "Macaroons are flexible authorization credentials that support decentralized delegation, attenuation, and verification.",
    homepage = "https://github.com/bungle/lua-resty-macaroons",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.macaroons"] = "lib/resty/macaroons.lua"
    }
}
