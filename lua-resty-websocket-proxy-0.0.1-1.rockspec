package = "lua-resty-websocket-proxy"
version = "0.0.1-1"
source = {
  url = "git://github.com/Kong/lua-resty-websocket-proxy",
  tag = "0.0.1",
}
description = {
  summary = "Reverse-proxying of websocket frames",
  detailed = [[
    Reverse-proxying of websocket frames with in-flight inspection/update/drop
    and frame aggregation support.
  ]],
  license = "Apache 2.0",
  homepage = "https://github.com/Kong/lua-resty-websocket-proxy",
}
dependencies = {}
build = {
  type = "builtin",
  modules = {
    ["resty.websocket.proxy"] = "lib/resty/websocket/proxy.lua",
  }
}
