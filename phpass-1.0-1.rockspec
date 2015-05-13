package = "phpass"
version = "1.0-1"
source = {
   url = "git://github.com/starius/lua-phpass.git",
   tag = "1.0",
}
description = {
   summary = "Portable PHP password hashing framework (Lua)",
   homepage = "https://github.com/starius/lua-phpass",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1", "luacrypto"
}
build = {
   type = "builtin",
   modules = {
      phpass = "src/phpass.lua"
   }
}
