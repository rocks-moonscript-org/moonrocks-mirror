package = "dr.tap"
version = "0.1-3"
source = {
   url = "git+https://github.com/dr-co/lua-tap",
   branch = "master"
}
description = {
   summary = "Queue for Tarantool",
   homepage = "https://github.com/dr-co/lua-tap",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["dr.tap"] = "dr/tap.lua"
   }
}
