package="luaposix"
version="5.1.7-3"
source = {
   url = "http://luaforge.net/frs/download.php/4631/luaposix-5.1.7.tar.bz2",
   md5 = "e7ed42536548ebc109bc1cb73f08b1e9",
   dir = "luaposix-5.1.7"
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
   type = "builtin",
   modules = {
      posix = {
         sources = "lposix.c",
      },
   },
   platforms = {
      linux = {
         modules = {
            posix = {
               libraries = { "crypt", "rt" },
            },
         },
      },
   },
   copy_directories = { "tests" }
}
