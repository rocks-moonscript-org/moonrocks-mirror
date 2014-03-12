package="lgdbm"
version="20070628-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lgdbm.tar.gz",
   md5 = "205a5e34676097732c7e33e8c7034580",
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
      library = "libgdbm.so"
   }
}
build = {
   type = "make",
   install_pass = false,
   build_target = "so",
   build_variables = {
      LUAINC = "$(LUA_INCDIR)",
      LUALIB = "$(LUA_LIBDIR)",
      LUABIN = "$(LUA_BINDIR)" 
   },
   install = {
      lib = { "gdbm.so" }
   }
}
