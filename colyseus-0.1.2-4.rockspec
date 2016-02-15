package = "colyseus"
version = "0.1.2-4"

source = {
  url = "git://github.com/gamestdio/colyseus.lua.git",
  dir = "colyseus",
  tag = "0.1.2"
}

description = {
  summary = "LUA/CoronaSDK client for Colyseus MMO Game Server",
  detailed = "Provides async client for Colyseus MMO Game Server",
  homepage = "https://github.com/gamestdio/colyseus",
  license = "MIT/X11"
}

dependencies = {
  "lua >= 5.1",
  "lua-websockets",
  "dromozoa-json",
  "lua-messagepack"
}

build = {
  type = 'builtin',
  install = {
    lua = {
      ['colyseus'] = 'src/colyseus.lua',
      -- ['websocket.sync'] = 'src/websocket/sync.lua',
      -- ['websocket.client'] = 'src/websocket/client.lua',
      -- ['websocket.client_copas'] = 'src/websocket/client_copas.lua',
      -- ['websocket.server'] = 'src/websocket/server.lua',
      -- ['websocket.server_copas'] = 'src/websocket/server_copas.lua',
      -- ['websocket.handshake'] = 'src/websocket/handshake.lua',
      -- ['websocket.tools'] = 'src/websocket/tools.lua',
      -- ['websocket.frame'] = 'src/websocket/frame.lua',
      -- ['websocket.bit'] = 'src/websocket/bit.lua',
      -- ['websocket.client_ev'] = 'src/websocket/client_ev.lua',
      -- ['websocket.ev_common'] = 'src/websocket/ev_common.lua',
      -- ['websocket.server_ev'] = 'src/websocket/server_ev.lua',
    }
  }
}
