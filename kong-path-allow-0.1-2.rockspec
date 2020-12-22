package = "kong-path-allow"
version = "0.1-2"
source = {
   url = "git+https://github.com/seifchen/kong-path-allow.git",
   branch = "fix/root_path"
}
description = {
   summary = "This plugin enables allow path for route, support regex",
   homepage = "https://github.com/seifchen/kong-path-allow",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-path-allow.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-path-allow.schema"]= "src/schema.lua"
   }
}
