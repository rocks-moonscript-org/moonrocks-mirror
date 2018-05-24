package = "lua-mtrace"
version = "0.1-1"
source = {
   url = "hg+https://code.zash.se/lua-mtrace/";
   tag = "0.1";
}
description = {
   homepage = "https://code.zash.se/lua-mtrace/",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      mtrace = {
         sources = "mtrace.c"
      }
   }
}
