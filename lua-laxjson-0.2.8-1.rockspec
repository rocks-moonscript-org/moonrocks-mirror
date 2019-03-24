package = "lua-laxjson"
version = "0.2.8-1"
source = {
  url = "https://github.com/sjnam/lua-laxjson",
  tag = "v0.2.8"
}
description = {
  summary = "Lua bindings to liblaxjson for LuaJIT using FFI",
  homepage = "https://github.com/sjnam/lua-laxjson",
  license = "Public Domain"
}
dependencies = {
  "luajit >= 2.0.5"
}
build = {
  type = "builtin",
  modules = {
    ["laxjson"] = "lib/laxjson.lua"
  }
}