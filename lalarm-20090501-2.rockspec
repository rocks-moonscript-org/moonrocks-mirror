package="lalarm"
version="20090501-2"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lalarm.tar.gz",
   md5 = "bc276f7f24cb9e7dc4dca42ba7ab801b",
   dir = "alarm"
}
description = {
   summary = "An alarm library for Lua",
   detailed = [[
      An alarm library for Lua based on the signal() call and
      the POSIX signal SIGALRM.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lalarm",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.0"
}

build = {
   type = "builtin",
   modules = {
      alarm = "lalarm.c"
   }
}
