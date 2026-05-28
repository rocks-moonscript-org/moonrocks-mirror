package = "atmos-env-pico"
version = "0.1-2"
source = {
   url = "git+https://github.com/lua-atmos/env-pico",
   branch = "v0.1",
}
description = {
   summary = "Pico environment for Atmos",
   homepage = "https://github.com/lua-atmos/env-pico",
   license = "MIT",
}
dependencies = {
   "lua >= 5.4",
   "atmos >= 0.6",
   "pico-sdl >= 0.3",
}
build = {
   type = "builtin",
   modules = {
      ["atmos.env.pico.init"] = "init.lua",
      ["atmos.env.pico.exs.hello"] = "exs/hello.lua",
      ["atmos.env.pico.exs.across"] = "exs/across.lua",
      ["atmos.env.pico.exs.click-drag-cancel"] = "exs/click-drag-cancel.lua",
   },
}
