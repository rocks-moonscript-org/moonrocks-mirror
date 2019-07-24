package = "luaunbound"
version = "0.5-1"
source = {
   url = "https://code.zash.se/dl/luaunbound/luaunbound-0.5.tar.gz"
}
description = {
   summary = "A binding to libunbound",
   homepage = "https://www.zash.se/luaunbound.html",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
external_dependencies = {
   libunbound = {
      header = "unbound.h",
      library = "unbound"
   }
}
build = {
   type = "builtin",
   modules = {
      lunbound = {
         libraries = {
            "unbound"
         },
         sources = {
            "lunbound.c"
         }
      }
   }
}
