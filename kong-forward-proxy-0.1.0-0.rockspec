package = "kong-forward-proxy"
version = "0.1.0-0"
source = {
  url = "git://github.com/tfabien/kong-forward-proxy/"
}
description = {
  summary = "A Kong plugin that allows access to an upstream url through a proxy",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5.1",
  "net-url ~> 0.9-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.forward-proxy.handler"] = "src/handler.lua",
    ["kong.plugins.forward-proxy.access"] = "src/access.lua",
    ["kong.plugins.forward-proxy.schema"] = "src/schema.lua"
  }
}