package = "sllog"
version = "0.2-1"
source = {
  url = "https://github.com/smi11/sllog-lua/archive/refs/tags/v0.2-1.zip",
  dir = "sllog-lua-0.2-1"
}
description = {
  summary = "Simple line logger",
  detailed = [[
    sllog.lua is a simple logging module for Lua that provides basic logging 
    functionality. It allows you to log messages with different levels of
    severity and to different outputs such as the console or a file. You can
    also customize the format of the log messages and colorize them.
  ]],
  homepage = "https://github.com/smi11/sllog-lua",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["sllog"] = "sllog.lua"
  },
  copy_directories = {}
}
