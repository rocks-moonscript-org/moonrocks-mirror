package="lgdbm"
version="20101030-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lgdbm.tar.gz",
   md5="46ea83ab2eb4f3f238af8c42c3927011",
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
   "lua >= 5.1"
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
         sources = "lgdbm.c",
         libdirs = { "$(GDBM_LIBDIR)" },
         incdirs = { "$(GDBM_INCDIR)" },
         libraries = { "gdbm" },
      },
   },
}
