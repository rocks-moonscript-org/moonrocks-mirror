package = "luafilesystem-ffi"
version = "0.3.0-1"
source = {
   url = "https://github.com/3scale/luafilesystem-ffi/archive/0.3.0.tar.gz",
   md5 = "68b9e6b34f14fcd715c9abf971e867e5",
   dir = "luafilesystem-ffi-0.3.0",
}
description = {
   summary = "Reimplement luafilesystem via LuaJIT FFI.",
   detailed = [[
Reimplement luafilesystem via LuaJIT FFI.]],
   homepage = "https://github.com/3scale/luafilesystem-ffi",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      lfs = "lfs_ffi.lua",
   }
}
