package = "kong-plugin-jwt-crafter-for-ee"
version = "1.1-0"

source = {
  url = "git://github.com/nragokong/kong-plugin-jwt-crafter-for-ee",
  tag = "v1.1"
}

description = {
  summary = "Crafts JWT plugin for succesfully authenticated requests based on consumer JWT credential.",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1",
  "inspect ~> 3.1.0",
  "lua-resty-jwt >= 0.1.10-1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-crafter.handler"] = "src/handler.lua",
    ["kong.plugins.jwt-crafter.schema"] = "src/schema.lua",
  }
}
