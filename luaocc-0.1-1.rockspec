package = "luaocc"
version = "0.1-1"
source = {
   url = "https://gitlab.com/yw05/luaocc.git"
}
description = {
   summary = "Unofficial Lua API for OpenCC",
   homepage = "https://gitlab.com/yw05/luaocc",
   license = "Apache"
}
dependencies = {
   "lua ~> 5.1"
}
external_dependencies = {
   OPENCC = {
      library = "opencc"
   }
}
build = {
   type = "builtin",
   modules = {
      luaocc = {
         incdirs = {
            "$(OPENCC_INCDIR)"
         },
         libdirs = {
            "$(OPENCC_LIBDIR)"
         },
         libraries = {
            "opencc"
         },
         sources = "main.c"
      }
   }
}
