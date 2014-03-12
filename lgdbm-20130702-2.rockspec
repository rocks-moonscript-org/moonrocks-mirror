package = "lgdbm"
version = "20130702-2"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lgdbm.tar.gz",
   md5 = "9c60dcf243486cd64045e592d1aff055",
   dir = "gdbm"
}
description = {
   summary = "A database library for Lua using GDBM",
   detailed = [[
      A database library for Lua based on GNU dbm.
      GNU dbm is a set of database routines that use extensible hashing.
      It works similar to the standard Unix dbm routines.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lgdbm",
   license = "Public domain"
}
dependencies = {
   "lua ~> 5.1"
}
external_dependencies = {
   GDBM = {
      header = "gdbm.h",
      library = "gdbm"
   }
}
build = {
   type = "builtin",
   modules = {
      gdbm = {
         incdirs = {
            "$(GDBM_INCDIR)"
         },
         libdirs = {
            "$(GDBM_LIBDIR)"
         },
         libraries = {
            "gdbm"
         },
         sources = "lgdbm.c"
      }
   }
}
