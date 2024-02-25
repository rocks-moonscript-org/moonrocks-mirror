---@diagnostic disable: lowercase-global
package = "alogger"
version = "0.3.0-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/alogger.git",
  tag = "v0.3.0",
}

description = {
  summary = "simple logger",
  detailed = [[
   A simple Logger for Lua
]],
  homepage = "https://gitlab.com/lua_rocks/alogger",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["alogger"] = "src/alogger.lua"
  },

  copy_directories = {
    'doc',
    'examples',
  }
}
