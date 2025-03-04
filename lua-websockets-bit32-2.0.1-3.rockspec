package = "lua-websockets-bit32"
version = "2.0.1-3"

source = {
   url = "git://github.com/jangabrielsson/lua-websockets",     
   tag = "v2.0.1"
}    

description = {
  summary = "Websockets for Lua",
  homepage = "http://github.com/lipp/lua-websockets",
  license = "MIT/X11",
  detailed = [[
    Provides sync and async clients and servers for copas and lua-ev.
    Changed dependcy fom bitop to bit32 in original rockspec.
  ]]
}

dependencies = {
  "lua >= 5.1",
  "luasocket",
  "bit32",
  "copas",
  "luasec"
}

build = {
  type = 'none',
  install = {
    lua = {
      ['websocket'] = 'src/websocket.lua',
      ['websocket.sync'] = 'src/websocket/sync.lua',
      ['websocket.client'] = 'src/websocket/client.lua',
      ['websocket.client_sync'] = 'src/websocket/client_sync.lua',
      ['websocket.client_copas'] = 'src/websocket/client_copas.lua',
      ['websocket.server'] = 'src/websocket/server.lua',
      ['websocket.server_copas'] = 'src/websocket/server_copas.lua',
      ['websocket.handshake'] = 'src/websocket/handshake.lua',
      ['websocket.tools'] = 'src/websocket/tools.lua',
      ['websocket.frame'] = 'src/websocket/frame.lua',
      ['websocket.bit'] = 'src/websocket/bit.lua',
      ['websocket.client_ev'] = 'src/websocket/client_ev.lua',
      ['websocket.ev_common'] = 'src/websocket/ev_common.lua',
      ['websocket.server_ev'] = 'src/websocket/server_ev.lua',
    }
  }
}
