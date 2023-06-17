package = "lua-dog"
version = "1.1.0-1"
source = {
  url = "https://gitlab.com/perritotuerto/codigo/lua-dog/-/archive/v" ..
        version .. "/lua-dog-v" .. version .. ".tar.gz",
}
description = {
  summary = "Lua extensions for lazy dogs",
  detailed = [[
  Extends Lua Standard Libraries and Pandoc Library.
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
