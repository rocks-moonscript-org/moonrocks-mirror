package = "ltype"

version = "1.0-1"

description = {
  summary = "Faster type() function made by storing typenames in closure upvalues",
  license = "MIT",
  homepage = "http://github.com/rafis/ltype",
}

dependencies = {
  "lua >= 5.1",
}

source = {
  url = "git://github.com/rafis/ltype",
  tag = "v1.0",
}

build = {
  type = "builtin",
  modules = {
    ["ltype"] = "src/ltype.lua",
    ["ltype.core"] = {
      sources = "src/ltype/core.c",
    },
  },
}
