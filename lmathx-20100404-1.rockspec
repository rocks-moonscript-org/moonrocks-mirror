package="lmathx"
version="20100404-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lmathx.tar.gz",
   md5 = "3dc2eea2cfffa13e42cb7b6cf2e97da2",
   dir = "mathx"
}
description = {
   summary = "C99 extensions for the math library",
   detailed = [[
      An extension of the Lua math library with the functions
      available in C99.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lmathx",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      mathx = "lmathx.c"
   }
}
