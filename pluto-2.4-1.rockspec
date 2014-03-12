package="Pluto"
version="2.4-1"
source = {
   url = "http://luaforge.net/frs/download.php/3309/pluto-2.4.tar.gz",
   md5 = "bf64eb8f5e8c295a5d56ee735ecef550",
}
description = {
   summary = "Heavy duty persistence for Lua",
   detailed = [[
      Pluto is a library which allows users to write arbitrarily large
      portions of the "Lua universe" into a flat file, and later read
      them back into the same or a different Lua universe. Object
      references are appropriately handled, such that the file contains
      everything needed to recreate the objects in question.
   ]],
   homepage = "http://lua-users.org/wiki/PlutoLibrary",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LUA_SOURCES={
   }
}
build = {
   type = "module",
   modules = {
      pluto = {
         sources = { "pluto.c", "pdep.c", "lzio.c" }
      }
   }
}
