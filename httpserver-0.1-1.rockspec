package = "httpserver"
version = "0.1-1"

source = {
  url = "git://github.com/saucisson/lua-httpserver",
  tag = "0.1",
}

description = {
  summary     = "Small HTTP server library",
  detailed    = [[]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban.linard@lsv.ens-cachan.fr>",
}

dependencies = {
  "coronest  ~> 0",
  "hotswap   ~> 0",
  "luasocket ~> 3",
--  "lua-websockets ~> 2",
}

build = {
  type    = "builtin",
  modules = {
    ["httpserver"                  ] = "src/httpserver.lua",
    ["httpserver.accept"           ] = "src/httpserver/accept.lua",
    ["httpserver.content_length"   ] = "src/httpserver/content_length.lua",
    ["httpserver.host"             ] = "src/httpserver/host.lua",
    ["httpserver.upgrade"          ] = "src/httpserver/upgrade.lua",
    ["httpserver.user_agent"       ] = "src/httpserver/user_agent.lua",
    ["httpserver.upgrade.websocket"] = "src/httpserver/upgrade/websocket.lua",
  },
}
