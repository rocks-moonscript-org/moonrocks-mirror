package = "portutils"
version = "0.1-7"
source = {
  url = "https://github.com/Mashape/lua-portutils/archive/0.1-7.tar.gz",
  dir = "lua-portutils-0.1-7"
}
description = {
  summary = "Utilities for networking ports",
  detailed = [[
    Utilities for networking ports
  ]],
  homepage = "https://github.com/Mashape/lua-portutils",
  license = "MIT" 
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    portutils = {
      sources = {"portutils.c"},
    }
  }
}