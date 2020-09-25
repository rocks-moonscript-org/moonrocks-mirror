package = "ffi-bitcask"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/lalawue/ffi_bitcask.lua/"
}
description = {
   summary = "Bitcask Key/Value Store for LuaJIT",
   detailed = [[
       FFI Bitcask Key/Value Store for LuaJIT
   ]],
   homepage = "https://github.com/lalawue/ffi_bitcask.lua",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
build = {
   type = "builtin",
   modules = {
      list = { "ffi_bitcask.lua" }
   }
}
