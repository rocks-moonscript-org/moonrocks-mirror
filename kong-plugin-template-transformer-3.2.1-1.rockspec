package = "kong-plugin-template-transformer"
version = "3.2.1-1"
source = {
   url = "git://github.com/stone-payments/kong-plugin-template-transformer",
   branch = "main",
   tag = "v3.2.1",
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
    ["kong.plugins.template-transformer.handler"] = "kong/plugins/template-transformer/handler.lua",
    ["kong.plugins.template-transformer.schema"] = "kong/plugins/template-transformer/schema.lua",
    ["kong.plugins.template-transformer.template_transformer"] = "kong/plugins/template-transformer/template_transformer.lua",
    ["kong.plugins.template-transformer.utils"] = "kong/plugins/template-transformer/utils.lua"
   }
}
