package = "kong-plugin-url-rewrite"
version = "0.3.0-0"
source = {
   url = "https://github.com/stone-payments/kong-plugin-url-rewrite",
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
    ["kong.plugins.kong-plugin-url-rewrite.handler"] = "./handler.lua",
    ["kong.plugins.kong-plugin-url-rewrite.schema"] = "./schema.lua"
   }
}
