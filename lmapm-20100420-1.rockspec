-- History:
--
-- 17-Nov-2009 Updated by Pierre to support building on windows
--

package="lmapm"
version="20100420-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lmapm.tar.gz",
   md5 = "d74227f9319b60f5e6a9ba152d77b6d1",
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
