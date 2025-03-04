package = "kong-plugin-serverless-functions"
version = "1.0.0-1"
source = {
  url = "git://github.com/kong/kong-plugin-serverless-functions",
  tag = "1.0.0"
}
description = {
  summary = "Dynamically run Lua code from Kong during plugin phases.",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.pre-function._handler"] = "kong/plugins/pre-function/_handler.lua",
    ["kong.plugins.pre-function._schema"] = "kong/plugins/pre-function/_schema.lua",

    ["kong.plugins.pre-function.handler"] = "kong/plugins/pre-function/handler.lua",
    ["kong.plugins.pre-function.schema"] = "kong/plugins/pre-function/schema.lua",

    ["kong.plugins.post-function.handler"] = "kong/plugins/post-function/handler.lua",
    ["kong.plugins.post-function.schema"] = "kong/plugins/post-function/schema.lua",
  }
}
