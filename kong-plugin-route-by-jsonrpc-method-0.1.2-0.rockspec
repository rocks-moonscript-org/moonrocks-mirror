package = "kong-plugin-route-by-jsonrpc-method"
version = "0.1.2-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/riordanp/kong-plugin-route-by-jsonrpc-method",
  tag = "0.1.2"
}
description = {
  summary = "A Kong plugin for routing based on JSONRPC method",
  license = "MIT",
  homepage = "https://www.github.com/riordanp/kong-plugin-route-by-jsonrpc-method"
}
dependencies = {
  "stringy ~> 0.4-1",
  "net-url ~> 1.1-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-plugin-route-by-jsonrpc-method.handler"] = "kong/plugins/route-by-jsonrpc-method/handler.lua",
    ["kong.plugins.kong-plugin-route-by-jsonrpc-method.schema"] = "kong/plugins/route-by-jsonrpc-method/schema.lua",
  }
}