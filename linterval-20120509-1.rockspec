package="linterval"
version="20120509-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.2/linterval.tar.gz",
   md5="d6554880cd2f4526f5fb9491543ae54a",
   dir = "interval"
}
description = {
   summary = "an interval arithmetic library",
   detailed = [[
      This is an interval arithmetic library for Lua 5.2. It is based on the
      PROFIL/BIAS library available at
      http://www.ti3.tu-harburg.de/Software/PROFILEnglisch.html
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#linterval",
   license = "Public domain"
}
dependencies = {
   "lua ~> 5.2"
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
