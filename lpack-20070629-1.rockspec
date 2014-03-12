package="lpack"
version="20070629-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lpack.tar.gz",
   md5 = "e6fe2f72fd6447b8e1712bbb95b32493",
   dir = "pack"
}
description = {
   summary = "A library for packing and unpacking binary data",
   detailed = [[
      A library for packing and unpacking binary data.
      The library adds two functions to the string library: pack and unpack.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lpack",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "module",
   modules = {
      pack = "lpack.c"
   }
}
