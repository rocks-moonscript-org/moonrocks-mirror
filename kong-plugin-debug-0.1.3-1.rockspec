package = "kong-plugin-debug"
version = "0.1.3-1"
source = {
   url = "git://github.com/Kong-Study-Group/kong-plugin-debug",
   tag = "0.1.3"
}
description = {
   summary = "Kong custom plugin for show api message",
   homepage = "https://github.com/Kong-Study-Group/kong-plugin-debug",
   license = "MIT"
}
dependencies = {}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.debug.handler"] = "kong/plugins/debug/handler.lua",
      ["kong.plugins.debug.schema"] = "kong/plugins/debug/schema.lua",
   }
}
