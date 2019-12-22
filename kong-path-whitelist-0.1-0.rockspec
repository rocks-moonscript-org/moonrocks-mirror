package = "kong-path-whitelist"
version = "0.1-0"
source = {
   url = "git+https://github.com/seifchen/kong-path-whitelist.git"
}
description = {
   summary = "This plugin enables white path for route, support regex",
   homepage = "https://github.com/seifchen/kong-path-whitelist",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-path-whitelist.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-path-whitelist.schema"]= "src/schema.lua"
   }
}