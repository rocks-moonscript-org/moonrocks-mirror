package = "brightness"
version = "1.0.0-1"
source = {
  url = "git://github.com/xnaltasee/brightness.lua.git",
}
description = {
  summary = "Simple library to querying brightness for Lua 5+ and LuaJIT.",
  homepage = "https://github.com/xnaltasee/brightness.lua",
  license = "ISC"
}
supported_platforms = {
  "unix"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["brightness"] = "src/brightness.lua"
  }
}
