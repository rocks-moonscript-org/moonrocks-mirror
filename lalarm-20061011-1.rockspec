package="lalarm"
version="20061011-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.0/lalarm.tar.gz",
   md5 = "ae690e096461a77e15447dd9c8b75c41",
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
   type = "module",
   modules = {
      alarm = "lalarm.c"
   }
}
