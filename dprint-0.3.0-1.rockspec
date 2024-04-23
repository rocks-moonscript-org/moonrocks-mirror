---@diagnostic disable: lowercase-global
package = "dprint"
version = "0.3.0-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/dprint.git",
  tag = "v0.3.0"
}

description = {
  summary = "dprint is a debugging print tool",
  detailed = [[
    The simplest debugging information logger.
    Disabled by default, with ability to enable debug mode at any time.
    When debug mode is enabled, data is simply output to StdOut.
    Displays the source file and line number where the call is coming from.
    Allows to flexibly and easily change the depth of the output trace
  ]],
  homepage = "https://gitlab.com/lua_rocks/dprint",
  license = "MIT"
}

dependencies = {}

build = {
  type = "builtin",
  modules = {
    dprint = "src/dprint.lua"
  },

  copy_directories = {
    'doc',
  }
}
