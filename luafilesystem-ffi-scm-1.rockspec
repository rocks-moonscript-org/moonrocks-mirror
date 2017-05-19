package = "luafilesystem-ffi"
version = "scm-1"
source = {
   url = "git+https://github.com/spacewander/luafilesystem.git"
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
