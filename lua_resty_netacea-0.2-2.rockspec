package = "lua_resty_netacea"
version = "0.2-2"
source = {
  url = "git://github.com/Netacea/lua_resty_netacea",
  branch = "master"
}
description = {
  summary = "An Openresty module for easy integration of Netacea services",
  homepage = "https://github.com/Netacea/lua_resty_netacea",
  maintainer = "Dan Lyon",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "luaossl",
  "lua-resty-http",
  "lbase64",
  "lua-cjson"
}
external_dependencies = {}
build = {
  type = "builtin",
  modules = {
    lua_resty_netacea = "src/lua_resty_netacea.lua"
  }
}
