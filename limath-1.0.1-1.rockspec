package = "limath"
version = "1.0.1-1"
source = {
  url = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/ar/limath-101.tar.gz",
  md5 = "c8deb1ac57393d0e489a52e7025324af"
}
description = {
  summary = "An arbitrary-precision integer library for Lua based on imath.",
  detailed = [[
    An arbitrary-precision integer library for Lua based on imath.
  ]],
  homepage = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    imath = {
      sources = {
        "limath.c",
        "src/imath.c",
      },
      incdirs = {
        "./src"
      }
    }
  }
}