package = "kong-plugin-url-rewrite"
version = "3.0.0-1"
source = {
   url = "git://github.com/stone-payments/kong-plugin-url-rewrite",
   branch = "main",
   tag = "v3.0.0",
}
description = {
  summary = "KongAPI Gateway middleware plugin for url-rewrite purposes.",
  license = "Apache License 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.url-rewrite.handler"] = "kong/plugins/url-rewrite/handler.lua",
    ["kong.plugins.url-rewrite.schema"] = "kong/plugins/url-rewrite/schema.lua"
   }
}
