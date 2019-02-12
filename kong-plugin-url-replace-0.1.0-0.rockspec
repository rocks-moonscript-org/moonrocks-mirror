package = "kong-plugin-url-replace"
version = "0.1.0-0"
source = {
   url = "git://github.com/torresmat/kong-plugin-url-replace.git",
}
description = {
  summary = "KongAPI Gateway middleware plugin for replacing patterns for strings in REQUEST PATH. Accepts string.gsub parameters.",
  license = "Apache License 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.url-replace.handler"] = "url-replace/handler.lua",
    ["kong.plugins.url-replace.schema"] = "url-replace/schema.lua"
   }
}
