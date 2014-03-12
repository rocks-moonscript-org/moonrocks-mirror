package="lgdbm"
version="20100824-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lgdbm.tar.gz",
   md5 = "aaa70c65c998e18487360f32dfac12af",
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
