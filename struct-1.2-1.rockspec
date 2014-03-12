package="struct"
version="1.2-1"
source = {
   url = "http://www.inf.puc-rio.br/~roberto/struct/struct.c",
   md5 = "f799fc92a66527a58abbe6339338bfd2"
}
description = {
   summary = "A library to convert Lua values to and from C structs",
   homepage = "http://www.inf.puc-rio.br/~roberto/struct/",
   license = "MIT/X"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      struct = {
         "struct.c",
      }
   },
}

