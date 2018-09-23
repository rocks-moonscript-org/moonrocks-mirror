package = "lua-lunix"
version = "1.0-0"
source = {
   url = "git+https://github.com/mrtnpwn/lunix.git"
}
description = {
   summary = "A pure (fake) Filesystem module for Lua.",
   detailed = "A pure (fake) Filesystem module for Lua.",
   homepage = "https://github.com/mrtnpwn/lunix",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "luacheck >= 0.23.0-1"
}
build = {
   type = "builtin",
   modules = {
      lunix = "lunix/init.lua",
      ["lunix.cat"] = "lunix/cat.lua",
      ["lunix.cp"] = "lunix/cp.lua",
      ["lunix.mv"] = "lunix/mv.lua",
      ["lunix.rm"] = "lunix/rm.lua",
      ["lunix.touch"] = "lunix/touch.lua",
      ["lunix.whoami"] = "lunix/whoami.lua"
   }
}
