package = "ffi-list"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/lalawue/ffi_list.lua/"
}
description = {
   summary = "FFI double linked list for LuaJIT",
   detailed = [[
       FFI double Linked List for LuaJIT
   ]],
   homepage = "https://github.com/lalawue/ffi_list.lua",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
build = {
   type = "builtin",
   modules = {
      list = { "ffi_list.lua" }
   }
}
