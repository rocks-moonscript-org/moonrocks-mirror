package = "atmos-env-socket"
version = "0.3-1"
source = {
   url = "git+https://github.com/lua-atmos/env-socket",
   branch = "v0.3",
}
description = {
   summary = "Socket environment for Atmos",
   homepage = "https://github.com/lua-atmos/env-socket",
   license = "MIT",
}
dependencies = {
   "lua >= 5.4",
   "atmos ~> 0.8",
   "luasocket",
}
build = {
   type = "builtin",
   modules = {
      ["atmos.env.socket.init"] = "init.lua",
      ["atmos.env.socket.exs.hello"] = "exs/hello.lua",
      ["atmos.env.socket.exs.cli-srv"] = "exs/cli-srv.lua",
   },
}
