package = "shelve"
version = "0.35.3-1"
source = {
   url = "git://github.com/aperezdc/lua-shelve",
   tag = "v0.35.3"
}
description = {
   summary = "Serialization and on-disk persistence for Lua values",
   detailed = [[
      The shelve module implemets a persistent table-like storage
      data structure which can store any Lua data values, which are
      marshalled and unmarshalled transparently. Persistence uses
      the GDBM or NDBM libraries.
   ]],
   license = "LGPLv2"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LIBGDBM = {
      header = "gdbm.h"
   }
}
build = {
   type = "builtin",
   modules = {
      shelve = {
         defines = {
            "NDEBUG"
         },
         libraries = {
            "gdbm"
         },
         sources = {
            "marshal.c", "shelve.c"
         }
      }
   }
}
