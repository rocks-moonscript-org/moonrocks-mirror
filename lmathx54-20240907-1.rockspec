package="lmathx54"
version="20240907-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.3/lmathx.tar.gz",
   md5 = "04e03bbec81d4f5305a494fbed6a07a1",
   dir = "mathx"
}
description = {
   summary = "C99 extensions for the math library",
   detailed = [[
      An extension of the Lua math library with the functions
      available in C99, updated for Lua 5.4.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lmathx",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.4"
}

build = {
   type = "builtin",
   modules = {
      mathx = "lmathx.c"
   }
}
