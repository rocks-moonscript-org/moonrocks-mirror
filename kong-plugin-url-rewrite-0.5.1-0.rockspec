package = "kong-plugin-url-rewrite"
version = "0.5.1-0"
source = {
   url = "git://github.com/stone-payments/kong-plugin-url-rewrite",
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
    ["kong.plugins.kong-plugin-url-rewrite.handler"] = "url-rewrite/handler.lua",
    ["kong.plugins.kong-plugin-url-rewrite.schema"] = "url-rewrite/schema.lua"
   }
}
