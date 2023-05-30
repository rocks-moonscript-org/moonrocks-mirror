package = "lua-dog"
version = "1.0-0"
source = {
  url = "https://gitlab.com/perritotuerto/codigo/lua-dog/-/archive/v1.0.0/lua-dog-v1.0.0.tar.gz",
}
description = {
  summary = "Lua extensions for lazy dogs",
  detailed = [[
  Adds functions to Lua Standard Libraries.
  ]],
  homepage = "https://gitlab.com/perritotuerto/codigo/lua-dog/",
  license = "GPLv3",
}
dependencies = {
  "lua >= 5.4, < 5.5"
}
build = {
  type = "builtin",
  modules = {
    dog = "src/dog.lua"
  }
}
