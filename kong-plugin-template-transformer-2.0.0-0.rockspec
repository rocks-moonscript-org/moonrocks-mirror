package = "kong-plugin-template-transformer"
version = "2.0.0-0"
source = {
   url = "git://github.com/stone-payments/kong-plugin-template-transformer",
   branch = "master",
   tag = "v2.0.0",
}
description = {
  summary = "A Kong plugin that enables template transforming",
  license = "Apache License 2.0"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http",
  "lua-resty-template >= 1.9-1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.kong-plugin-template-transformer.handler"] = "template-transformer/handler.lua",
    ["kong.plugins.kong-plugin-template-transformer.schema"] = "template-transformer/schema.lua",
    ["kong.plugins.kong-plugin-template-transformer.template_transformer"] = "template-transformer/template_transformer.lua",
    ["kong.plugins.kong-plugin-template-transformer.utils"] = "template-transformer/utils.lua"
   }
}
