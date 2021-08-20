package = "ffi-bitcask"
version = "1.0.1-1"
source = {
   url = "git+https://github.com/lalawue/ffi-bitcask.lua/",
   tag = "1.0.1"
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
dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.5"
}
build = {
   type = "builtin",
   modules = {
      ["ffi_bitcask"] = "ffi_bitcask.lua",
      ["bitcask.ffi_crc32"] = "bitcask/ffi_crc32.lua",
      ["bitcask.ffi_lfs"] = "bitcask/ffi_lfs.lua",
   }
}
