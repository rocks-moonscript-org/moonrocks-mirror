package = "LuaSVN"
version = "0.3.0-1"
source = {
  url = "http://luaforge.net/frs/download.php/3226/luasvn-0.3.0.tar.gz",
  dir = "luasvn-0.3.0/src"
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
  APR_UTIL = {
     header = "apr-1/apr_xlate.h"
  },
  SUBVERSION = {
     header = "subversion-1/svn_io.h"
  }
}
build = {
  type = "make",
  install_pass = false,
  build_variables = {
     APR = "-I$(APR_INCDIR)/apr-1",
     APR_UTIL = "-I$(APR_UTIL_INCDIR)/apr-1",
     SUBVERSION = "-I$(SUBVERSION_INCDIR)/subversion-1 -I$(LUA_INCDIR)",
     LDFLAGS = "-Wl,-R$(SUBVERSION_LIBDIR) $(LIBFLAG) -L$(SUBVERSION_LIBDIR)"
  },
  install = {
     lib = { "svn.so" }
  }
}
