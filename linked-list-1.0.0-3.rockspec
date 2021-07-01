package = "linked-list"
version = "1.0.0-3"
source = {
   url = "git+https://github.com/lalawue/linked-list.lua/",
   tag = "1.0.0"
}
description = {
   summary = "double linked list for Lua",
   detailed = [[
       A doubly linked list for Lua
   ]],
   homepage = "https://github.com/lalawue/linked-list.lua",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["linked-list"] = "linked-list.lua"
   }
}
