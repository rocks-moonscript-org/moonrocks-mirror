package="lbc"
version="20120430-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.1/lbc.tar.gz",
   md5 = "9566ccc446475ab0f3734bc9b53c03a3",
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
   type = "builtin",
   modules = {
      bc = {
         sources = {
            "lbc.c", "number.c"
         },
         incdirs = {
            "."
         },
      }
   }
}
