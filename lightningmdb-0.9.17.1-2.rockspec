package = "Lightningmdb"
version = "0.9.17.1-2"
source = {
   dir = "lightningmdb-0.9.17.1-2",
   url = "https://github.com/shmul/lightningmdb/archive/0.9.17.1-2.zip"
}
description = {
   summary = "A thin wrapper around OpenLDAP Lightning Memory-Mapped Database (LMDB).",
   detailed = [[
     LMDB is a key-value embedded store that is a part of the OpenLDAP project. This rock provides a Lua interface to to it.
   ]],
   homepage = "https://github.com/shmul/lightningmdb",
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
  LMDB = {
    header = "lmdb.h",
    library = "lmdb",
  }
}
build = {
   type = "builtin",
   modules = {
     lightningmdb = {
         sources = {"lightningmdb.c"},
         defines = {"USE_GLOBALS"},
         libraries = {"lmdb"},
         incdirs = {"$(LMDB_INCDIR)"},
         libdirs = {"$(LMDB_LIBDIR)"}
      }
   }
}