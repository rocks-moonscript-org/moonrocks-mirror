package = "lbc"
version = "20180729-1"
source = {
  url = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/ar/lbc-100.tar.gz",
  md5 = "e5db9e3d0cc28099e0b3b6018939b43e",
}
description = {
  summary = "A simple arbitrary precision library",
  detailed = [[
     A simple arbitrary precision library for Lua,
     based on code from GNU bc.
  ]],
  homepage = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    bc = {
      sources = {
        "lbc.c",
        "src/number.c"
      },
      incdirs = {
        "./src"
      }
    }
  }
}