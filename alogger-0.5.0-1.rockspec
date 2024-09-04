---@diagnostic disable: lowercase-global
package = "alogger"
version = "0.5.0-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/alogger.git",
  tag = "v0.5.0",
}

description = {
  summary = "simple logger",
  detailed = [[
A simple Logger for Lua
- build messages with trace(file:linenum), datetime, format string and params
- configurable via lua-file
- has multiple levels such as trace, debug, info, warn, error, fatal.
- can write log messages into configured log-file or just show into stdout.
- helper to quick (one-line) setup output into stdout useful in testing.
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
