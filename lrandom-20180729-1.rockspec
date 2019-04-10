package = "lrandom"
version = "20180729-1"
source = {
  url = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/ar/lrandom-100.tar.gz",
  md5 = "1de4cb0fef30e6bf81788627a02c1e15"
}
description = {
  summary = "A library for generating random numbers for Lua based on the Mersenne Twister.",
  detailed = [[
    A library for generating random numbers based on the Mersenne Twister,
    a pseudorandom number generating algorithm developped by Makoto Matsumoto
    and Takuji Nishimura (alphabetical order) in 1996/1997.
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
    random = {
      sources = {
        "lrandom.c",
        "random.c",
      }
    }
  }
}