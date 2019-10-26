package = "kong-plugin-html-replacer"
version = "0.1-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/chamedoon/kong-plugin-html-replacer.git",
  tag = "v0.1-0"
}
description = {
  summary = "Replaces user specified searches in html responses",
  license = "Apache 2.0",
  homepage = "https://github.com/chamedoon/kong-plugin-html-replacer",
  detailed = [[
      HTML Replacer is a kong plugin to replace user specified texts in html responses
  ]],
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.html-replacer.handler"] = "src/handler.lua",
    ["kong.plugins.html-replacer.schema"] = "src/schema.lua"
  }
}
