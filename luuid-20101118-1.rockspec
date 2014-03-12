package="luuid"
version="20101118-1"

source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/luuid.tar.gz",
   md5="d479786745a71398c3b1e0dfd75a4e03",
   dir = "uuid"
}

description = {
   summary = "A library for UUID generation",
   detailed = [[
      A library for generating universally unique identifiers based on
      libuuid, which is part of e2fsprogs.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#luuid",
   license = "Public domain"
}

dependencies = {
   "lua >= 5.1"
}

external_dependencies = {
   LIBUUID = {
      header = "uuid/uuid.h",
      library = "libuuid.so"
   }
}

build = {
   type = "builtin",
   modules = {
      uuid = {
         sources = {
            "luuid.c"
         },
         libraries = {
            "uuid"
         }
      }
   }
}
