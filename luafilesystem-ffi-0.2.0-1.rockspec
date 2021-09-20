package = "luafilesystem-ffi"
version = "0.2.0-1"
source = {
   url = "https://github.com/3scale/luafilesystem-ffi/archive/v0.2.0.tar.gz",
   md5 = "b4687cf745c3234c4f717dbfed5d4f41",
   dir = "luafilesystem-ffi-0.2.0",
}
description = {
   summary = "Reimplement luafilesystem via LuaJIT FFI.",
   detailed = [[
Reimplement luafilesystem via LuaJIT FFI.]],
   homepage = "https://github.com/spacewander/luafilesystem",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      lfs = "lfs_ffi.lua",
   }
}
