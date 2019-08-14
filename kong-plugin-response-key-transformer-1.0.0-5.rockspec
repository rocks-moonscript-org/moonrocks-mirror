package = "kong-plugin-response-key-transformer"

version = "1.0.0-5"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "response-key-transformer"
supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/fintechinnovationas/response-key-transformer",
  tag = "v1.0.0"
}
description = {
  summary = "Kong plugin used to transform the keys in response objects.",
  license = "Apache 2.0",
  homepage = "https://github.com/fintechinnovationas/response-key-transformer"
}
dependencies = {
  "lua ~> 5"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.response-key-transformer.handler"] = "src/handler.lua",
    ["kong.plugins.response-key-transformer.schema"] = "src/schema.lua",
    ["kong.plugins.response-key-transformer.body_transformer"] = "src/body_transformer.lua",
    ["kong.plugins.response-key-transformer.header_transformer"] = "src/header_transformer.lua"
  }
}