package = "EventEmitter"
version = "0.1.1-1"

source = {
  url = "https://github.com/moteus/lua-EventEmitter/archive/v0.1.1.zip",
  dir = "lua-EventEmitter-0.1.1",
}

description = {
  summary    = "Implementation of EventEmitter for Lua.",
  homepage   = "https://github.com/moteus/lua-EventEmitter",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
}

build = {
  copy_directories = {'examples', 'test'},

  type = "builtin",

  modules = {
    [ "EventEmitter"       ] = "src/lua/EventEmitter.lua",
    [ "EventEmitter.utils" ] = "src/lua/EventEmitter/utils.lua",
  }
}
