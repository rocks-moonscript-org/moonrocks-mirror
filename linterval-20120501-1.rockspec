package="linterval"
version="20120501-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/linterval.tar.gz",
   md5="f3923d0e1aa228e43d36bf27411f682b",
   dir = "interval"
}
description = {
   summary = "an interval arithmetic library",
   detailed = [[
      This is an interval arithmetic library for Lua 5.1. It is based on the
      PROFIL/BIAS library available at
      http://www.ti3.tu-harburg.de/Software/PROFILEnglisch.html
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#linterval",
   license = "Public domain"
}
dependencies = {
   "lua ~> 5.1"
}

external_dependencies = {
   BIAS = {
      header = "BIAS/Bias0.h",
      library = "libBias.a",
   }
}

build = {
   type= "builtin",
   modules = {
      interval = {
         sources = { "linterval.c" },
         incdirs = { "$BIAS_INCDIR" },
         libdirs = { "$BIAS_LIBDIR" },
         libraries = {"Bias" },
      }
   }
}
