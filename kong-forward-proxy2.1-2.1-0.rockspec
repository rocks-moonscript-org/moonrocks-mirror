package = "kong-forward-proxy2.1"
version = "2.1-0"
source = {
  url = "git+https://github.com/fenix-hub/kong-forward-proxy.git"
}
description = {
  summary = "A Kong plugin that allows access to an upstream url through a proxy",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.forward-proxy.handler"] = "src/handler.lua",
    ["kong.plugins.forward-proxy.schema"] = "src/schema.lua"
  }
}
