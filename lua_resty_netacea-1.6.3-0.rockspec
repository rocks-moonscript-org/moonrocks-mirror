package = "lua_resty_netacea"
version = "1.6.3-0"
source = {
  url = "git://github.com/Netacea/lua_resty_netacea",
  tag = "v1.6.3"
}
description = {
  summary = "An Openresty module for easy integration of Netacea services",
  homepage = "https://github.com/Netacea/lua_resty_netacea",
  maintainer = "Netacea Ltd.",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "luaossl",
  "lua-resty-http",
  "lbase64",
  "lua-cjson",
  "lua-resty-jwt"
}
external_dependencies = {}
build = {
  type = "builtin",
  modules = {
    lua_resty_netacea = "src/lua_resty_netacea.lua",
    lua_resty_netacea_constants = "src/lua_resty_netacea_constants.lua",
    lua_resty_netacea_cookies_v3 = "src/lua_resty_netacea_cookies_v3.lua",
    lua_resty_netacea_ingest = "src/lua_resty_netacea_ingest.lua",
    lua_resty_netacea_mitigation = "src/lua_resty_netacea_mitigation.lua",
    lua_resty_netacea_protector_client = "src/lua_resty_netacea_protector_client.lua",
    netacea_utils = "src/netacea_utils.lua",
    kinesis_resty = "src/kinesis_resty.lua"
  }
}
