package = "lua-laxjson"
version = "0.3.4-1"
source = {
  url = "https://github.com/sjnam/lua-laxjson",
  tag = "v0.3.4"
}
description = {
  summary = "Lua bindings to liblaxjson for LuaJIT using FFI",
  homepage = "https://github.com/sjnam/lua-laxjson",
  license = "Public Domain"
}
build = {
  type = "builtin",
  modules = {
    ["laxjson"] = "lib/laxjson.lua"
  }
}
