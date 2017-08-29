
--*-lua-*--
package = "luastrava"
version = "0.5.0-1"
source = {
  url = "git://github.com/akshaynathr/Lua-Strava",
  tag = "v0.5",
}
description = {
  summary = "A Lua REST library for strava api",
  detailed = [[
            
  ]],
  homepage = "https://akshaynathr.github.io/Lua-Strava/",
  license = "MIT"
}
dependencies = {
  "lua = 5.1",
  
}
build = {
  type="builtin",
  modules={
    ["luastrava.client"] = "luastrava/client.lua",
    ["luastrava.protocol"] = "luastrava/protocol.lua",
    ["luastrava.encode"] = "luastrava/encode.lua",
  }
}

