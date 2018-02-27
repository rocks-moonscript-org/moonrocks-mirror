package = "luafilesystem-ffi"
version = "0.1.0-1"
source = {
   url = "https://github.com/3scale/luafilesystem-ffi/archive/v0.1.0.tar.gz",
   md5 = "fdf1a4ddb96e4ae0e9e6c248ed756ee0",
   dir = "luafilesystem-ffi-0.1.0",
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
