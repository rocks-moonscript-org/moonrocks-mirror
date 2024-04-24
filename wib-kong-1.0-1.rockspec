package = "wib-kong"
version = "1.0-1"
source = {
  url = "file:///home/yiftach/wib-kong-plugin/wib-kong.tar.gz"
  
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
    ["handler"] = "handler.lua"
  },
  files = {
    "handler.lua",
    "schema.lua"
  }
}

