package="lmathx"
version="20140620-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.3/lmathx.tar.gz",
   md5="89386e28497eed6f96c8ff865500d22c",
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
