package = "kong-plugin-log-extended"
version = "1.1-1"
source = {
   url = "git+https://github.com/bskiefer/kong-plugin-log-extended.git",
   tag = "v1.1"
}
description = {
   homepage = "https://github.com/bskiefer/kong-plugin-log-extended.git",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.log-extended.handler"] = "handler.lua",
      ["kong.plugins.log-extended.schema"] = "schema.lua",
      ["kong.plugins.log-extended.serializer"] = "serializer.lua"
   }
}
