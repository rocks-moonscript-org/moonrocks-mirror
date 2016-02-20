package = "luanet"
version = "1.1.2-0"
source = {
	url = "http://github.com/mbalmer/luapgsql/archive/1.1.2.zip";
	dir = "luanet-1.1.2";
}
description = {
   summary = "Network access for Lua",
   homepage = "http://github.com/arcapos/luanet",
   license = "3-clause BSD",
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      net = {
         sources = {"luanet.c"}
      }
   },
   platforms = {
      linux = {
         modules = {
            net = {
               defines = {"_GNU_SOURCE"}
            }
         }
      }
   }
}
