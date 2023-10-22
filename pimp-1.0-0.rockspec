package = "pimp"
version = "1.0-0"

source = {
  url = "git+https://github.com/uriid1/pimp-lua.git",
}

description = {
  summary = "Pimp Module for Lua Debugging",
  detailed = [[
    The Pimp Module is a Lua module designed to aid in debugging and logging by providing functions to print and format information about function calls, arguments, and more. It offers a simple way to enhance the debugging process in your Lua applications.
  ]],
  homepage = "https://github.com/uriid1/pimp-lua",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    [package] = package.."/init.lua",
    [package..".pretty-print"] = package.."/pretty-print.lua",
    [package..".color"] = package.."/color.lua"
  }
}