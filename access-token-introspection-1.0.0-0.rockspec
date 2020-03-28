package = "access-token-introspection"
version = "1.0.0-0"
source = {
   url = "git+https://github.com/VentaApps/kong-token-introspection.git"
}
description = {
   summary = "0 JWT access-token, added to request header.",
   detailed = [[
# How it works
Plugin is protecting Kong API service/route with introspection of Oauth2.0 JWT access-token, added to request header. Plugin does a pre-request to oauth introspection endpoint([RFC7662](https://tools.ietf.org/html/rfc7662#section-2)).]],
   homepage = "https://github.com/VentaApps/kong-token-introspection",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.access-token-introspection.access"] = "kong/plugins/access-token-introspection/access.lua",
      ["kong.plugins.access-token-introspection.handler"] = "kong/plugins/access-token-introspection/handler.lua",
      ["kong.plugins.access-token-introspection.schema"] = "kong/plugins/access-token-introspection/schema.lua"
   }
}
