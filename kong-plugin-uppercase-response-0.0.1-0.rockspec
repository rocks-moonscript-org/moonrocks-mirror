package = "kong-plugin-uppercase-response"
version = "0.0.1-0"
source = {
   url = "git://github.com/kong/kong-plugin-uppercase-response",
   tag = "0.0.1"
}
description = {
   summary = "Kong demo plugin which uppercases received responses",
   homepage = "https://github.com/kong/kong-plugin-uppercase-response",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.uppercase-response.handler"] = "kong/plugins/uppercase-response/handler.lua",
      ["kong.plugins.uppercase-response.schema"] = "kong/plugins/uppercase-response/schema.lua",
   }
}
