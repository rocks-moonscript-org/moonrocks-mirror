package = "kong-jwt-introspection"
version = "1.3.1-1"
source = {
   url = "git+https://github.com/stefancruz/kong-jwt-introspection.git",
   tag = "v1.3.1"
}
description = {
  summary = "A Kong plugin, that let you use an external Oauth 2.0 provider to protect your API",
     detailed = [[
# How it works
Plugin is protecting Kong API service/route with introspection of Oauth2.0 JWT access-token, added to request header. Plugin does a pre-request to oauth introspection endpoint([RFC7662](https://tools.ietf.org/html/rfc7662#section-2)).]],
   homepage = "https://github.com/stefancruz/kong-token-introspection",
   license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

local pluginName = "kong-jwt-introspection"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".access"] = "kong/plugins/"..pluginName.."/access.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
  }
}