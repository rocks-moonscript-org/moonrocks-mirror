package = "set"
version = "0.1.1-1"
source = {
  url = "git://github.com/wscherphof/lua-set.git",
  branch = "v0.1.1"
}
description = {
  summary = "Straightforward Set library",
  detailed = [[
    Creating and manipulating sets, including + (union), - (subtraction), * (intersection), len(), and tostring()
  ]],
  homepage = "http://wscherphof.github.io/lua-set/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.2",
  "lunitx >= 0.6"
}
build = {
  type = "builtin",
  copy_directories = {"doc", "tst"},
  modules = {
    ["Set.init"] = "src/Set/init.lua"
  }
}