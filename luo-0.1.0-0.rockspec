package = "luo"
version = "0.1.0-0"
source = {
  url = "git://github.com/unlimiter/luo",
  tag = "0.1.0",
}
description = {
  summary = "Simple OOP module for Lua.",
  homepage = "git://github.com/unlimiter/luo",
  license = "MIT License",
}
dependencies = {}
build = {
  type = "builtin",
  modules = {
    uo = "luo.lua",
  },
  copy_directories = {"doc"},
}
