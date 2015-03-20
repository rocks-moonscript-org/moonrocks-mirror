package = "luaejdb"
version = "1.1.0-2"
source = {
  url = "git://github.com/Softmotions/ejdb-lua.git"
}
description = {
  summary = "Embedded JSON Database engine Lua binding",
  detailed = [[It aims to be a fast MongoDB-like library which can be embedded into C/C++, .Net, NodeJS, 
  Python, Lua, Go, Java and Ruby applications under terms of LGPL license. 
  This package requires the EJDB C library (libejdb) to be installed (https://github.com/Softmotions/ejdb) 
   ]],
  homepage = "http://ejdb.org",
  license = "LGPLv2"
}

dependencies = {
  "lua ~> 5.1"
}

external_dependencies = {
   LIBEJDB = {
      header = "ejdb/ejdb.h"
   }
}

build = {
  type = "builtin",
  modules = {
    ["ejdb"]  = "ejdb.lua",
    ["ejdb.inspect"]  = "ejdb/inspect.lua",
    ["luaejdb"] = {
       sources = {"luaejdb.c", "luabson.c"},
       libraries = {"ejdb"} ,
       incdirs = {"$(LIBEJDB_INCDIR)"},
       libdirs = {"$(LIBEJDB_LIBDIR)"},
       defines = {}
    }
  }
}

