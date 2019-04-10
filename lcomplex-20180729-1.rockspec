package = "lcomplex"
version = "20180729-1"
source = {
  url = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/ar/lcomplex-100.tar.gz",
  md5 = "ba3c9babf127cf1a313453bcabaf2a73"
}
description = {
  summary = "Support for complex numbers in Lua",
  detailed = [[
    This code provides support for complex numbers in Lua using the functions
    available in C99.
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
    complex = {
      sources = {
        "lcomplex.c"
      }
    }
  }
}
