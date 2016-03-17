package = "lugate"
version = "0.1.1-1"
source = {
  url = "git://github.com/zinovyev/lugate.git",
  tag = "0.1.1"
}
description = {
  summary = "Lua module for building JSON-RPC 2.0 Gateway APIs just inside of your Nginx",
  detailed = [[
        Lua module for building JSON-RPC 2.0 Gateway APIs just inside of your Nginx.
        The package is meant to be used with 'openresty/lua-nginx-module' Nginx module.
    ]],
  homepage = "http://github.com/zinovyev/lugate",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "rapidjson ~> 0.4"
}
build = {
  type = "builtin",
  modules = {
    lugate = "src/lugate.lua",
    ["lugate.request"] = "src/lugate/request.lua"
  },
}
