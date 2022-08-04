package = "glu"
version = "1.0-0"
source = {
  url = "https://github.com/raygerlabs/glu.git",
  dir = "glu-1.0-0"
}
description = {
  summary = "An extension plugin for Lustache in order to enable filters in mustache expressions",
  homepage = "https://github.com/raygerlabs/glu.git",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "lustache"
}
build = {
  type = "builtin",
  modules = {
    glu = "src/glu.lua"
  }
}
