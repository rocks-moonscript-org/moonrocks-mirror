package = "wib-kong"
version = "1.0-3"
source = {
  url = "file:///home/yiftach/wib-kong.tar.gz",
  tag = "v1.0-3"
}
description = {
  summary = "Wib security traffic collection plugin",
  detailed = [[
    Wib security traffic collection plugin for Kong. This plugin collects traffic data and forwards it to Wib security services for analysis.
  ]],
  license = "MIT"
}
dependencies = {
  -- Add any dependencies your package requires
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.wib-kong.handler"] = "handler.lua",
    ["kong.plugins.wib-kong.schema"] = "schema.lua"
  }
}

