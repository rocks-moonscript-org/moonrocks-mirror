package = "luaocc"
version = "0.1-2"
source = {
   url = "git+https://gitlab.com/yw05/luaocc.git",
   tag = "0.1"
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
