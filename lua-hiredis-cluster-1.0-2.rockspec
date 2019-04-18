package = "lua-hiredis-cluster"
version = "1.0-2"
source = {
   url = "git://github.com/zs-soft/lua-hiredis-cluster.git",
   branch = "master"
}
description = {
   summary = "Bindings for hiredis Redis-client library support redis cluster",
   homepage = "https://github.com/zs-soft/lua-hiredis-cluster",
   license = "MIT",
   maintainer = "zhengsu <zsteven2015@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      redis_cluster = "lualib/redis_cluster.lua",
      hiredis = {
         sources = {
            "src/lua-hiredis.c",

            -- bundled hiredis code --
            "lib/hiredis/net.c",
            "lib/hiredis/async.c",
            "lib/hiredis/dict.c",
            "lib/hiredis/hiredis.c",
            "lib/hiredis/sds.c"
         },
         incdirs = {
            "src/",

            -- bundled hiredis code --
            "lib/",
            "lib/hiredis/"
         }
      }
   }
}
