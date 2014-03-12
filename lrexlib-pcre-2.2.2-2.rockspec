package="Lrexlib-PCRE"
version="2.2.2-2"
source = {
   url = "http://luaforge.net/frs/download.php/3018/lrexlib-2.2.2.zip",
   md5 = "e6b18dbad4cf2942ad10535c629b8ae9"
}
description = {
   summary = "Lua binding of the PCRE regular expression library.",
   detailed = [[
      Lrexlib is a regular expression library for Lua 5.1, which
      provides bindings for POSIX and PCRE regular expression libraries.
      This rock provides the PCRE bindings.
   ]],
   homepage = "http://lrexlib.luaforge.net/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   PCRE = {
      header = "pcre.h"
   }
}
build = {
   type = "make",
   install_pass = false,
   build_target = "build_pcre",
   variables = {
      INC = "-I$(LUA_INCDIR) -I$(PCRE_INCDIR)",
      LIB = "-L$(PCRE_LIBDIR) -lpcre",
      LD = "$(LD)",
      LDFLAGS = "$(LIBFLAG)",
      MYCFLAGS = "-W -Wall $(CFLAGS)",
   },
   install = {
      lib = {
         "src/rex_pcre.so"
      }
   }
}
