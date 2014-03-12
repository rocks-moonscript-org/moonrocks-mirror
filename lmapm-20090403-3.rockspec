-- History:
--
-- 17-Nov-2009 Updated by Pierre to support building on windows
--

package="lmapm"
version="20090403-3"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lmapm.tar.gz",
   md5 = "5ed12abceb6099e3f67fb32d98ce1c12",
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

   platforms= {
      windows= {
         MAPM={
            library = "mapm.lib",
         },
      },
   },

   MAPM = {
      header = "m_apm.h",
      library = "libmapm.a",
   }
}

build = {
   type= "builtin",
   modules = {
      mapm = {
         sources = { "lmapm.c" },
         libraries = {"mapm" },
      }
   }
}
