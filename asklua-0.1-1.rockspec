package = "AskLua"
version = "0.1-1"

source = {
  url = "http://luaforge.net/frs/download.php/4470/asklua-0.1.tar.gz",
  dir = "asklua-0.1",
}
description = {
  summary =  "Adds interactive help to other modules",

  detailed = [[
     AskLua provides a module that implements a help integrated system
     for on line use in the interactive interpreter, and for generating
     documentation in html and printed formats.
  ]],
  license = "Public domain",
}

dependencies = {
  "lua >= 5.1",
  "markdown",
}

build = {
  type = "builtin",
  modules = {
    ask = "ask.lua",
  },
  copy_directories = { "doc", "example"},
}

