package = "upstream-auth-hmac"
version = "0.0.1-1"
source = {
   url = "git://github.com/gae1202/kong-plugin-upstream-auth-hmac"
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
