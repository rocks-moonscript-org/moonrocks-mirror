package = "underscore-dot-lua"
version = "1.0-0"
source = {
  url = "git+https://github.com/AlberTajuelo/underscore-dot-lua.git"
}
description = {
  summary = "A utility library for Lua",
  detailed = "",
  homepage = "https://github.com/AlberTajuelo/underscore-dot-lua.git",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    [ "underscore" ] = "src/underscore.lua"
  }
}
