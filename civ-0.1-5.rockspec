package = "civ"
version = "0.1-5"
source = {
  url = "git+ssh://git@github.com/civboot/civlib.git",
}
description = {
  summary = "DEPRECATED: use libraries from http://github.com/civlua instead",
  homepage = "https://github.com/civboot/civlib",
  license = "UNLICENSE",
}
dependencies = {
  "lua ~> 5.3",
}
build = {
  type = "builtin",
  modules = {
    civ = "civ.lua",
  }
}
