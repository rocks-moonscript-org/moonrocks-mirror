package="lint64"
version="20130805.52-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/lint64.tar.gz",
   md5="0d78b67dc0525abf2962ee492c504819",
   dir = "int64"
}
description = {
   summary = "A library for 64-bit signed integer arithmetic",
   detailed = [[
      This code provides support for 64-bit signed integers in Lua.
      Arithmetic is as defined by the C standard, that is, overflow
      is handled by wrap-around.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lint64",
   license = "Public domain"
}
dependencies = {
   "lua ~> 5.2"
}

build = {
   type = "builtin",
   modules = {
      int64 = "lint64.c"
   }
}
