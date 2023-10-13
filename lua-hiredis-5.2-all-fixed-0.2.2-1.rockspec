package = "lua-hiredis-5.2-all-fixed"
version = "0.2.2-1"
source = {
   url = "git://github.com/bundasmanu/lua-hiredis.git",
   branch = "lua52-rockspec"
}
description = {
   summary = "Bindings for hiredis Redis-client library. Full support for Lua v5.2",
   homepage = "https://github.com/bundasmanu/lua-hiredis",
   license = "MIT/X11",
   maintainer = "Gustavo Almeida <galmeida@broadvoice.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
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