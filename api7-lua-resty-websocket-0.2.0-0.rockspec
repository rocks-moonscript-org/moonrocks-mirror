package = "api7-lua-resty-websocket"
version = "0.2.0-0"
source = {
   url = "git+https://github.com/api7/lua-resty-websocket",
   tag = "v0.2.0",
}

description = {
   summary = "Lua WebSocket implementation for the ngx_lua module",
   detailed = [[
      api7-lua-resty-websocket is api7's fork of the OpenResty WebSocket
      library. It implements WebSocket server and client libraries based
      on the ngx_lua module, taking advantage of ngx_lua's cosocket API
      for fully nonblocking behavior. It also carries a WebSocket reverse
      proxy module ported from Kong/lua-resty-websocket-proxy.
   ]],
   homepage = "https://github.com/api7/lua-resty-websocket",
   license = "2-clause BSD",
}

dependencies = {}

build = {
   type = "builtin",
   modules = {
      ["resty.websocket.client"]   = "lib/resty/websocket/client.lua",
      ["resty.websocket.server"]   = "lib/resty/websocket/server.lua",
      ["resty.websocket.protocol"] = "lib/resty/websocket/protocol.lua",
      ["resty.websocket.proxy"]    = "lib/resty/websocket/proxy.lua",
   }
}
