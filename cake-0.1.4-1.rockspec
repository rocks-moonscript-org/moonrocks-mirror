package = "cake"
version = "0.1.4-1"
source = {
   url = "git+ssh://git@github.com/0snilcy/lua-cake.git"
}
description = {
   homepage = "https://github.com/0snilcy/lua-cake",
   license = "MIT/X11"
}
build = {
   type = "builtin",
   modules = {
      ["cake"] = "lib/init.lua"
   }
}
dependencies = {
   "lua >= 5.1, <= 5.4",
   "lua-term == 0.7-1"
}
