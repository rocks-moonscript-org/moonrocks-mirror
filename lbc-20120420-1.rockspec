package="lbc"
version="20120420-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.2/lbc.tar.gz",
   md5="cbe56578065b1f6c7bc9b14b3dfbaf19",
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
   "lua ~> 5.2"
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
