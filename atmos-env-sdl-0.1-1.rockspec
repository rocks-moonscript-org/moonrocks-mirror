package = "atmos-env-sdl"
version = "0.1-1"
source = {
   url = "git+https://github.com/lua-atmos/env-sdl",
   branch = "v0.1",
}
description = {
   summary = "SDL environment for Atmos",
   homepage = "https://github.com/lua-atmos/env-sdl",
   license = "MIT",
}
dependencies = {
   "lua >= 5.4",
   "atmos >= 0.6",
   "lua-sdl2",
}
build = {
   type = "builtin",
   modules = {
      ["atmos.env.sdl.init"] = "init.lua",
      ["atmos.env.sdl.exs.hello"] = "exs/hello.lua",
      ["atmos.env.sdl.exs.across"] = "exs/across.lua",
      ["atmos.env.sdl.exs.click-drag-cancel"] = "exs/click-drag-cancel.lua",
   },
}
