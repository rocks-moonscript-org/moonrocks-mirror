package="lint64"
version="20130805.51-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lint64.tar.gz",
   md5="acbc8698d4c07524b0a19e4048b95058",
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
   "lua ~> 5.1"
}

build = {
   type = "builtin",
   modules = {
      int64 = "lint64.c"
   }
}
