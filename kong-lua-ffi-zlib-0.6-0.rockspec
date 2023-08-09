package = "kong-lua-ffi-zlib"
version = "0.6-0"
source = {
  url = "git://github.com/Kong/lua-ffi-zlib",
  tag = "v0.6"
}
description = {
  summary = "A Lua module using LuaJIT's FFI feature to access zlib. (Kong's fork)",
  homepage = "https://github.com/Kong/lua-ffi-zlib",
  maintainer = "Kong"
}
dependencies = {
    "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["ffi-zlib"] = "lib/ffi-zlib.lua",
  }
}
