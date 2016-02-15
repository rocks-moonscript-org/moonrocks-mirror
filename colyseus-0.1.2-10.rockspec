package = "colyseus"
version = "0.1.2-10"

source = {
  url = "git://github.com/gamestdio/colyseus.lua.git"
}

description = {
  summary = "LUA/CoronaSDK client for Colyseus MMO Game Server",
  detailed = "Provides async client for Colyseus MMO Game Server",
  homepage = "https://github.com/gamestdio/colyseus",
  license = "MIT/X11"
}

dependencies = {
  "lua >= 5.1",
  "dromozoa-json",
  "lua-messagepack"
}

build = {
  type = 'none',
  install = {
    lua = {
      ['colyseus'] = 'src/colyseus.lua',
      ['colyseus.room'] = 'src/colyseus/room.lua',
      ['colyseus.protocol'] = 'src/colyseus/protocol.lua',
      ['colyseus.events'] = 'src/colyseus/events.lua',
    }
  }
}
