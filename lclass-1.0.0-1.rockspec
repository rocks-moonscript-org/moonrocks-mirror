package = "lclass"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/YagoCrispim/lua-class",
   tag = "v1.0.0"
}
description = {
   summary = " Classes in Lua",
   homepage = "https://github.com/YagoCrispim/lua-class",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.4"
}
build = {
   type = "none",
   install = {
      lua = {
         "class.lua"
      }
   }
}
