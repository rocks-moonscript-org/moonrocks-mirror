package="lmathx"
version="20120430.52-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/lmathx.tar.gz",
   md5="1a5db9aa0d0c90fb758c57c6deb3cf1b",
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
   "lua ~> 5.2"
}

build = {
   type = "builtin",
   modules = {
      mathx = "lmathx.c"
   }
}
