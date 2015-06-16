package = "layeredata"
version = "0.1-1"

source = {
  url = "git://github.com/saucisson/lua-layeredata",
}

description = {
  summary     = "Layered Data",
  detailed    = [[
The `layeredata` (layered data) library allows to represent data as trees
observed through several layers.
]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban.linard@lsv.ens-cachan.fr>",
}

dependencies = {
  "c3       >= 0",
  "coronest >= 0",
  "serpent  >= 0",
}

build = {
  type    = "builtin",
  modules = {
    ["layeredata"] = "src/layeredata.lua",
  },
}
