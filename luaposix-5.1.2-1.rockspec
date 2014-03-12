package="luaposix"
version="5.1.2-1"
source = {
   url = "http://luaforge.net/frs/download.php/3063/luaposix-5.1.2.tar.gz",
   md5 = "31deeb4add91f76b3c2d36aae2888d81",
   dir = "luaposix-5.1.2"
}
description = {
   summary = "A POSIX library for Lua.",
   detailed = [[
      A library binding a number of POSIX functions, which supplements the
      basic set of ANSI C functions provided by the standard Lua libraries.
      POSIX is a Portable Operating System Interface standard defined by IEEE.
      LuaPosix is a fork of LPosix.
   ]],
   homepage = "http://luaforge.net/projects/luaposix/",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "module",
   modules = {
      posix = "lposix.c"
   }
}
