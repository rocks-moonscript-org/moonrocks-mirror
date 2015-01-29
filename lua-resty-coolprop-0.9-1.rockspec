package = "lua-resty-coolprop"
version = "0.9-1"
source = {
    url = "git://github.com/bungle/lua-resty-coolprop.git",
    branch = "v0.9"
}
description = {
    summary = "LuaJIT FFI bindings for CoolProp - Thermophysical Properties for the Masses",
    detailed = "lua-resty-coolprop implements thermophysical properties library bindings for CoolProp library (LuaJIT).",
    homepage = "https://github.com/bungle/lua-resty-coolprop",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.coolprop"] = "lib/resty/coolprop.lua"
    }
}
