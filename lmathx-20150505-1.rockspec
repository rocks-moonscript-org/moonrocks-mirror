package="lmathx"
version="20150505-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.3/lmathx.tar.gz",
   md5="5b5bd22aec169712173d5e39ce759c34",
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
