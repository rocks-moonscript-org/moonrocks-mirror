package = "linked_list"
version = "1.0.0-2"
source = {
   url = "git+https://github.com/lalawue/linked_list.lua/"
}
description = {
   summary = "double linked list for Lua/LuaJIT",
   detailed = [[
       double Linked List for Lua/LuaJIT
   ]],
   homepage = "https://github.com/lalawue/linked_list.lua",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
build = {
   type = "builtin",
   modules = {
      list = { "linked_list.lua" }
   }
}
