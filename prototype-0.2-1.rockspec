package = "prototype"
version = "0.2-1"
source = {
  url = "git://github.com/siffiejoe/lua-prototype.git",
  tag = "v0.2",
}
description = {
  summary = "A small library for prototype based OO programming.",
  detailed = [[
    Although Lua is more suited to prototype based OO programming
    almost all OO examples/tutorials cover class based OO. This module
    provides the means to create highly configurable object
    hierarchies using prototype based OO programming in Lua.
  ]],
  homepage = "http://siffiejoe.github.com/lua-prototype/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, <= 5.2"
}
build = {
  type = "builtin",
  modules = {
    [ "prototype" ] = "src/prototype.lua",
  }
}

