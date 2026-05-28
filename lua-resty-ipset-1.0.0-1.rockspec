package = "lua-resty-ipset"
version = "1.0.0-1"

source = {
    url = "git+https://github.com/arctistechnology/lua-resty-ipset.git",
    tag = "v1.0.0",
}

description = {
    summary  = "OpenResty FFI bindings for Linux ipset",
    detailed = [[
        High-performance Lua/LuaJIT bindings for Linux ipset via libipset FFI.
        Zero subprocess overhead, kernel-level IP filtering for OpenResty/nginx.
        Supports ban/unban/test/list operations with per-entry timeouts and IPv6.
    ]],
    homepage = "https://github.com/arctistechnology/lua-resty-ipset",
    license  = "MIT",
    maintainer = "Zephrise <https://github.com/zephrise>",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["resty.ipset"]         = "lib/resty/ipset/init.lua",
        ["resty.ipset.banlist"] = "lib/resty/ipset/banlist.lua",
    },
}
