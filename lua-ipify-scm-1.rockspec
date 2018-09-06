package = "lua-ipify"
version = "scm-1"
source = {
   url = "git+https://github.com/TheIndra55/lua-ipify.git"
}
description = {
   homepage = "https://github.com/TheIndra55/lua-ipify",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.2"
}
external_dependencies = {
   CURL = {
      library = "curl"
   }
}
build = {
   type = "builtin",
   modules = {
      ipify = {
         incdirs = {
            "$(CURL_INCDIR)"
         },
         libdirs = {
            "$(CURL_LIBDIR)"
         },
         libraries = {
            "curl"
         },
         sources = "src/ipify.c"
      }
   }
}
