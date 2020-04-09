package = "nekos-lua-cqueues"
version = "1.0.0-1"
source = {
   url = "git://github.com/lleyton/nekos-lua-cqueues",
   tag = "v1.0.0"
}
description = {
   summary = "A nekos.life wrapper for cqueues.",
   detailed = [[
      A nekos.life wrapper which uses the lua-http library, supporting asyncronous operation with cqueues.
      This wrapper has the exact same interface as https://github.com/Nekos-life/nekos-dot-life.
   ]],
   homepage = "https://github.com/lleyton/nekos-lua-cqueues",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "http",
   "rapidjson"
}
build = {
   type = "builtin",
   modules = {
      ["nekos-lua-cqueues"] = "init.lua",
      ["nekos-lua-cqueues.endpoints"] = "endpoints.lua"
   }
}
