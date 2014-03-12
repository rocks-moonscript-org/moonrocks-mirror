package="lalarm"
version="20120503-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lalarm.tar.gz",
   md5="aba607541310c43da9c5b4109fa7c346",
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
