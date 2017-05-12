package="lmathx"
version="20150624-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.3/lmathx.tar.gz",
   md5 = "04e03bbec81d4f5305a494fbed6a07a1",
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
   "lua ~> 5.3"
}

build = {
   type = "builtin",
   modules = {
      mathx = "lmathx.c"
   }
}
