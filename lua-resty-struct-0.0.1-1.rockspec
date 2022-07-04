package = "lua-resty-struct"
version = "0.0.1-1"
source = {
  url = "git+https://github.com/cumtcdf/lua-resty-struct",
  tag = "0.0.1"
}
description = {
  summary = "A pure LuaJIT (no dependencies) struct library.",
  detailed = [[
    This module is aimed at being a free of dependencies, 
    performant and complete struct library for LuaJIT and ngx_lua.
    Use it like Python struct module.
  ]],
  homepage = "https://github.com/cumtcdf/lua-resty-struct/",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["resty.struct"] = "lib/resty/struct.lua"
  }
}
