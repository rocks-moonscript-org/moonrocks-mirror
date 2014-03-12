package="lmathx"
version="20120430-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lmathx.tar.gz",
   md5="de515d227239fcdd934f32f496dda77d",
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
