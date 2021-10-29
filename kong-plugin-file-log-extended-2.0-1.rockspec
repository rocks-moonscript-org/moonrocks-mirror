package = "kong-plugin-file-log-extended"
version = "2.0-1"
source = {
   url = "git+https://github.com/bskiefer/kong-plugin-file-log-extended.git",
   tag = "v2.0"
}
description = {
   homepage = "https://github.com/bskiefer/kong-plugin-file-log-extended.git",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.file-log-extended.handler"] = "handler.lua",
      ["kong.plugins.file-log-extended.schema"] = "schema.lua",
      ["kong.plugins.file-log-extended.serializer"] = "serializer.lua"
   }
}
