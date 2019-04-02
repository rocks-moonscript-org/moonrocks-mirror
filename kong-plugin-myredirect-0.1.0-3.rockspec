package = "kong-plugin-myredirect"
version = "0.1.0-3"
source = {
   url = "git+https://github.com/qianweicheng/kong-redirect.git"
}
description = {
   summary = "Kong redirect is used to rewrite the Location based on response Code",
   homepage = "https://github.com/qianweicheng/kong-redirect",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.myredirect.handler"] = "src/handler.lua",
      ["kong.plugins.myredirect.schema"] = "src/schema.lua"
   }
}
