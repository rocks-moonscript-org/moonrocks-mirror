package = "LuaSVN"
version = "0.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/2512/luasvn-0.1.tar.gz",
   dir = "luasvn-0.1/src"
}
description = {
   summary = "Library for using Subversion from Lua",
   detailed = [[
      LuaSVN is a library that allows to use some Subversion (SVN)
      facilities inside Lua programs. Subversion is an open source
      version control system.
   ]],
   license = "MIT/X11",
   homepage = "http://www.lua.inf.puc-rio.br/~sergio/luasvn/"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   APR = {
      header = "apr-1/apr.h"
   },
   SUBVERSION = {
      header = "subversion-1/svn_repos.h"
   },
   UUID = {
      library = "libuuid.so"
   }
}
build = {
   type = "make",
   install_pass = false,
   build_variables = {
      APR = "-I$(APR_INCDIR)/apr-1",
      SUBVERSION = "-I$(SUBVERSION_INCDIR)/subversion-1",
      LDFLAGS = "$(LIBFLAG) -L$(APR_LIBDIR) -L$(SUBVERSION_LIBDIR) -L$(UUID_LIBDIR)"
   },
   install = {
      lib = { "luasvn.so" }
   }
}
