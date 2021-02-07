package = "warn"
version = "1.1.1-1"
source = {
   url = "git+https://github.com/darkwiiplayer/lua-warn.git",
   tag = "v1.1.1"
}
description = {
   homepage = "https://github.com/darkwiiplayer/lua-warn",
   license = "Public Domain"
}
build = {
   type = "builtin",
   modules = {
      w = "w.lua",
      warn = "warn.lua",
      ["warn.compatible"] = "warn/compatible.lua",
      ["warn.maybe"] = "warn/maybe.lua"
   }
}
