package = "lgdbm"
version = "20211118.52-0"
source = {
   -- url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/lgdbm.tar.gz",
   -- url="http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/lgdbm.tar.gz",
   url = "https://pjb.com.au/comp/lua/lgdbm.tar.gz",
   md5 = "2b209b3f21e1e6cb87b1d623ada8e3cb",
   dir = "gdbm"
}
description = {
   summary = "A database library for Lua using GDBM",
   detailed = [[
      A database library for Lua based on GNU dbm.
      GNU dbm is a set of database routines that use extensible hashing.
      It works similar to the standard Unix dbm routines.
      
      Docs at: http://www.pjb.com.au/comp/lua/lgdbm.html
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lgdbm",
   license = "Public domain"
}
dependencies = {
   "lua >=5.2, <5.5"  -- 20211118 to allow lua5.4
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
