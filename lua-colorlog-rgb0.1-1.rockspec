package = "lua-colorlog"
version = "rgb0.1-1"
rockspec_format = "3.0"

source = {
  url = "git://github.com/distressfeelings/lua-colorlog",
  tag = "rgb0.1v"
}

description = {
  summary = "lua-colorlog is a Lua lib to make your scripts' outputs more beautiful and fun!",
  detailed = [[
    Lua colorlog is a log output customizer for scripts, to make them more readable, understandable and beautiful 
    to see! The principal objective is to upgrade a little better your script output with different varieties of colors.
  ]],
  homepage = "https://github.com/distressfeelings/lua-colorlog",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lunajson >= 1.2.3"
}

build = {
  type = "builtin",
  modules = {
    ["lua-colorlog"] = "lua-colorlog/colorlog/src/lua-colorlog.lua"
  }
}