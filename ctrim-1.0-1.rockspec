rockspec_format = "1.1"
package = "ctrim"
version = "1.0-1"
source = {
   url = "git://github.com/isavegas/lua_ctrim"
}
description = {
   homepage = "https://github.com/isavegas/lua_ctrim",
   summary = "C implementation of a trim function.",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ctrim = {
         sources = "ctrim.c"
      }
   }
}
