package = "ffi-avl"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/lalawue/ffi_avl.lua/"
}
description = {
   summary = "FFI AVL implementation for LuaJIT",
   detailed = [[
       FFI AVL implementation for LuaJIT
   ]],
   homepage = "https://github.com/lalawue/ffi_avl.lua",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
build = {
   type = "builtin",
   modules = {
      list = { "ffi_avl.lua" }
   }
}
