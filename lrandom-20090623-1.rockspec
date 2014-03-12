package="lrandom"
version="20090623-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lrandom.tar.gz",
   md5 = "44cc74cc1d9aec329021cffd532a6198",
   dir = "random"
}
description = {
   summary = "A library for generating random numbers.",
   detailed = [[
      A library for generating random numbers based on the Mersenne Twister,
      a pseudorandom number generating algorithm developped by Makoto Matsumoto
      and Takuji Nishimura (alphabetical order) in 1996/1997.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lrandom",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      random = "lrandom.c"
   }
}
