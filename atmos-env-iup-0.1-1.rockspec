package = "atmos-env-iup"
version = "0.1-1"
source = {
   url = "git+https://github.com/lua-atmos/env-iup",
   branch = "v0.1",
}
description = {
   summary = "IUP environment for Atmos",
   homepage = "https://github.com/lua-atmos/env-iup",
   license = "MIT",
}
dependencies = {
   "lua >= 5.4",
   "atmos >= 0.6",
   "iuplua",
}
build = {
   type = "builtin",
   modules = {
      ["atmos.env.iup.init"] = "init.lua",
      ["atmos.env.iup.exs.hello"] = "exs/hello.lua",
      ["atmos.env.iup.exs.button-counter"] = "exs/button-counter.lua",
      ["atmos.env.iup.exs.iup-net"] = "exs/iup-net.lua",
   },
}
