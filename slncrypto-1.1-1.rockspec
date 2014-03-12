package="slncrypto"
version="1.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/1692/slncrypto-1.1.tar.bz2",
   md5 = "4709bffa83fbd03eeca4174f1a009bb4",
}
description = {
   summary = "A cryptography library",
   detailed = [[
      A cryptography support library for Lua, developed for
      the Selene database project.
   ]],
   homepage = "http://luaforge.net/projects/sln/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "module",
   modules = {
      crypto = {
         "slncrypt.c"
      }
   }
}
