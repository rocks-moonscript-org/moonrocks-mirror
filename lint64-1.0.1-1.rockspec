package = "lint64"
version = "1.0.1-1"
source = {
  url = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/ar/lint64-101.tar.gz",
  md5 = "ced797bf415a20e00724d206d8384788"
}
description = {
  summary = "A library for using 64-bit integers in Lua.",
  detailed = [[This code provides support for 64-bit signed integers in Lua.
Arithmetic is as defined by the C standard, that is, overflow
is handled by wrap-around.]],
  homepage = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    int64 = {
      sources = {
        "lint64.c",
      }
    }
  }
}