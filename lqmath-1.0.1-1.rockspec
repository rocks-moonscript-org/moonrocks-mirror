package = "lqmath"
version = "1.0.1-1"
source = {
  url = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/ar/lqmath-101.tar.gz",
  md5 = "95682908219a07feb080434a2b7dd790"
}
description = {
  summary = "A rational number library for Lua based on imath.",
  detailed = [[This is a rational number library for Lua. It is based on the arbitrary
precision library IMath written by Michael J. Fromberger available at
https://github.com/creachadair/imath]],
  homepage = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    qmath = {
      sources = {
        "lqmath.c",
        "src/imath.c",
        "src/imrat.c",
      },
      incdirs = {
        "./src"
      }
    }
  }
}