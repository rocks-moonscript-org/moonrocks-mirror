-- History:
--
-- 17-Nov-2009 Updated by Pierre to support building on windows
--

package="lmapm"
version="20120501-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lmapm.tar.gz",
   md5="cf3bbfbd4d84a510ef06e601b867a526",
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
