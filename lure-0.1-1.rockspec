-- FIXME: I do not understand how to limit install to a single lua file.

package = "lure"
version = "0.1-1"

source = {
  url = "https://github.com/zwizwa/lure-lua/archive/v0.1.zip",
  dir = "lure-lua-0.1",
}

description = {
  summary    = "Lua library for writing Scheme interpreters/compilers",
  homepage   = "https://github.com/zwizwa/lure-lua",
  license    = "MIT/X11",
  maintainer = "Tom Schouten",
  detailed   = [[
  Lua wrappers for writing Scheme interpreters and compilers.
  
  Experimental.
  ]],
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",

  modules = {
    lure = "init.lua",
  }

}
