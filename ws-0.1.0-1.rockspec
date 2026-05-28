rockspec_format = "3.0"
package = "ws"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/iruizsalinas/ws.git",
  tag = "v0.1.0",
}

description = {
  summary = "A WebSocket client and server library for Lua",
  homepage = "https://github.com/iruizsalinas/ws",
  license = "MIT",
  labels = { "websocket", "networking" },
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ws = "ws/init.lua",
    ["ws.compat"] = "ws/compat.lua",
    ["ws.utf8"] = "ws/utf8.lua",
    ["ws.sha1"] = "ws/sha1.lua",
    ["ws.base64"] = "ws/base64.lua",
    ["ws.buffer"] = "ws/buffer.lua",
    ["ws.emitter"] = "ws/emitter.lua",
    ["ws.validation"] = "ws/validation.lua",
    ["ws.url"] = "ws/url.lua",
    ["ws.frame"] = "ws/frame.lua",
    ["ws.receiver"] = "ws/receiver.lua",
    ["ws.sender"] = "ws/sender.lua",
    ["ws.extension"] = "ws/extension.lua",
    ["ws.subprotocol"] = "ws/subprotocol.lua",
    ["ws.deflate"] = "ws/deflate.lua",
    ["ws.limiter"] = "ws/limiter.lua",
    ["ws.handshake"] = "ws/handshake.lua",
    ["ws.websocket"] = "ws/websocket.lua",
    ["ws.server"] = "ws/server.lua",
  },
}
