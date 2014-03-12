package="lmapm"
version="20070628-2"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lmapm.tar.gz",
   md5 = "eb0e7ed49f6b75b1db193f6b894cb829",
   dir = "mapm"
}
description = {
   summary = "A complete arbitrary precision library",
   detailed = [[
      A complete arbitrary precision library for Lua, based on MAPM.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lmapm",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1"
}

external_dependencies = {
   MAPM = {
      header = "m_apm.h",
      library = "libmapm.a",
   }
}
build = {
   type = "make",
   install_pass = false,
   build_target = "so",
   build_variables = {
      LUAINC = "$(LUA_INCDIR)",
      LUALIB = "$(LUA_LIBDIR)",
      LUABIN = "$(LUA_BINDIR)" ,
      MAPM = "$(MAPM_LIBDIR)",
      CC = "$(CC) -I$(LUA_INCDIR) -I$(MAPM_INCDIR)"

   },
   install = {
      lib = { "mapm.so" }
   }
}
