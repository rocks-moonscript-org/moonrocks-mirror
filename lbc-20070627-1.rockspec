package="lbc"
version="20070627-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lbc.tar.gz",
   md5 = "da759f8dd014dba41afb3bb3e75336fa",
   dir = "bc"
}
description = {
   summary = "A simple arbitrary precision library",
   detailed = [[
      A simple arbitrary precision library for Lua,
      based on code from GNU bc.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lbc",
   license = "GNU General Public License version 2 or later"
}
dependencies = {
   "lua >= 5.1"
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
      lib = { "bc.so" }
   }
}
