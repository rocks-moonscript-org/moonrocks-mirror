package = "kong-plugin-redirect"
version = "0.1.0-0"
source = {
   url = "git+https://github.com/nagra-insight/kong-plugin-redirect"
}
description = {
   homepage = "Kong API Gateway middleware plugin for redirect purposes.",
   license = "Apache License 2.0"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.redirect.handler"] = "kong/plugins/redirect/handler.lua",
      ["kong.plugins.redirect.schema"] = "kong/plugins/redirect/schema.lua"
   }
}
