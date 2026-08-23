package = "lua-coreutils"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/JxJo1/lua-coreutils"
}
description = {
   summary = "A work-in-progress reimplementation and an attempt of reimplementing GNU coreutils commands in Lua using luaposix",
   homepage = "https://github.com/JxJo1/lua-coreutils",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luaposix >= 36.3-1"
}
build = {
   type = "builtin",
   modules = {},
   install = {
      bin = {
         ["uname"] = "src/uname.lua",
         ["yes"] = "src/yes.lua",
         ["whoami"] = "src/whoami.lua",
         ["true"] = "src/true.lua",
         ["false"] = "src/false.lua",
         ["sleep"] = "src/sleep.lua",
         ["pwd"] = "src/pwd.lua"
      }

   },
}
