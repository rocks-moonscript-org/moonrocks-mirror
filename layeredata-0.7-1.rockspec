package = "layeredata"
version = "0.7-1"

source = {
  url = "git://github.com/saucisson/lua-layeredata",
  tag = "0.7",
}

description = {
  summary     = "Layered Data",
  detailed    = [[
The `layeredata` (layered data) library allows to represent data as trees
observed through several layers.
]],
  license     = "MIT/X11",
  homepage    = "https://github.com/saucisson/lua-layeredata",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "c3",
  "coronest",
  "uuid",
}

build = {
  type    = "builtin",
  modules = {
    layeredata = "src/layeredata/init.lua",
  },
}
