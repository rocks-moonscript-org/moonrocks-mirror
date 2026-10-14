rockspec_format = "3.0"
package = "ws"
version = "0.2.1-1"
source = {
  url = "https://github.com/iruizsalinas/ws/archive/refs/tags/v0.2.1.tar.gz",
  dir = "ws-0.2.1",
}
description = {
  summary = "A WebSocket client and server library for Lua",
  homepage = "https://github.com/iruizsalinas/ws",
  license = "MIT",
  labels = { "websocket", "rfc6455", "networking", "tls" },
}
dependencies = { "lua >= 5.1, < 5.6" }
build = {
  type = "command",
  build_command = '"$(LUA)" scripts/native.lua',
  install = {
    lua = {
      ["ws"] = "ws/init.lua",
      ["ws.emitter"] = "ws/emitter.lua",
      ["ws.loop"] = "ws/loop.lua",
      ["ws.opts"] = "ws/opts.lua",
      ["ws.server"] = "ws/server.lua",
      ["ws.socket"] = "ws/socket.lua",
      ["ws.timer"] = "ws/timer.lua",
    },
    lib = { ["ws.core"] = "ws/core.so" },
  },
  platforms = {
    windows = { install = { lib = { ["ws.core"] = "ws/core.dll" } } },
  },
}
