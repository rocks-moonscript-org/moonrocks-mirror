package="lrandom"
version="20070628-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lrandom.tar.gz",
   md5 = "a295eb3e1d90e01e3c361880ba64c8f0",
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
   type = "module",
   modules = {
      random = "lrandom.c"
   }
}
