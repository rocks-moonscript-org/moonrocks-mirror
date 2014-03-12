package = "lgdbm"
version = "20130702.52-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/lgdbm.tar.gz",
   md5 = "2b209b3f21e1e6cb87b1d623ada8e3cb",
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
   "lua ~> 5.2"
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
