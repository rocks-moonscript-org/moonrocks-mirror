package="lqd"
version="20120420-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.2/lqd.tar.gz",
   md5="087417cc7c64c7b432e1127dbf8c996a",
   dir = "qd"
}
description = {
   summary = "a high-precision mathematical library",
   detailed = [[
      This is a high-precision mathematical library for Lua.
      It is based on the qd library available at
      http://crd.lbl.gov/~dhbailey/mpdist/
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lqd",
   license = "Public domain"
}
dependencies = {
   "lua ~> 5.2"
}

external_dependencies = {
   QD = {
      header = "qd/c_qd.h",
      library = "libqd.a",
   }
}

build = {
   type= "builtin",
   modules = {
      qd = {
         sources = { "lqd.c" },
         incdirs = { "$QD_INCDIR" },
         libdirs = { "$QD_LIBDIR" },
         libraries = {"qd" },
      }
   }
}
