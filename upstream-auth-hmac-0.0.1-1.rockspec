package = "upstream-auth-hmac"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/i4platform/kong_plugin_proto"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.upstream-auth-hmac.handler"] = "kong/plugin/upstream-auth-hmac/handler.lua",
      ["kong.plugins.upstream-auth-hmac.schema"] = "kong/plugin/upstream-auth-hmac/schema.lua"
   }
}
