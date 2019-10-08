package = "websocket"
version = "1.0-1"
source = {
   url = "git+https://gitlab.com/CodUSER/websocket.git",
   tag = "1.0"
}
description = {
   homepage = "https://gitlab.com/CodUSER/websocket",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      websocket = "lua/websocket.lua",
      ["websocket.bit"] = "lua/websocket/bit.lua",
      ["websocket.client"] = "lua/websocket/client.lua",
      ["websocket.client_copas"] = "lua/websocket/client_copas.lua",
      ["websocket.client_ev"] = "lua/websocket/client_ev.lua",
      ["websocket.client_sync"] = "lua/websocket/client_sync.lua",
      ["websocket.ev_common"] = "lua/websocket/ev_common.lua",
      ["websocket.frame"] = "lua/websocket/frame.lua",
      ["websocket.handshake"] = "lua/websocket/handshake.lua",
      ["websocket.server"] = "lua/websocket/server.lua",
      ["websocket.server_copas"] = "lua/websocket/server_copas.lua",
      ["websocket.server_ev"] = "lua/websocket/server_ev.lua",
      ["websocket.sync"] = "lua/websocket/sync.lua",
      ["websocket.tools"] = "lua/websocket/tools.lua"
   }
}
