package = "lua-resty-websocket"
version = "0.07-0"
source = {
   url = "git://github.com/openresty/lua-resty-websocket",
   tag = "v0.07",
}
description = {
   summary = "Lua WebSocket implementation for the ngx_lua module",
   homepage = "https://github.com/openresty/lua-resty-websocket",
   license = "2-clause BSD",
   maintainer = "Yichun Zhang (agentzh)",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["resty.websocket.server"] = "lib/resty/websocket/server.lua",
      ["resty.websocket.client"] = "lib/resty/websocket/client.lua",
      ["resty.websocket.protocol"] = "lib/resty/websocket/protocol.lua",
   },
}
