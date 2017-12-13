package = "kong-plugin-param-transformer"
version = "0.1-1"
source = {
   url = "https://github.com/Kong-Study-Group/kong-plugin-param-transformer.git",
   tag = "0.1"
}
description = {
   summary = "I can transfor param into upstream.",
   detailed = "I can transfor param into upstream.",
   homepage = "https://github.com/Kong-Study-Group/kong-plugin-param-transformer.git",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.param-transformer.handler"] = "kong/plugins/param-transformer/handler.lua",
      ["kong.plugins.param-transformer.schema"] = "kong/plugins/param-transformer/schema.lua",
      ["spec.param-transformer.01-access_spec"] = "spec/param-transformer/01-access_spec.lua"
   }
}
