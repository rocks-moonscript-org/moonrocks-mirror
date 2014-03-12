package = "lua-imlib2"
version = "0.1-3"
source = {
   url = "http://luaforge.net/frs/download.php/3042/lua-imlib2-0.1.tar.gz",
   md5 = "f90d5d70ea8af6b66ee2e3071a08ec00"
}
description = {
   summary = "A binding to the imlib2 image manipulation library",
   homepage = "http://asbradbury.org/projects/lua-imlib2/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   IMLIB2 = {
      header = "Imlib2.h"
   }
}
build = {
   type = "make",
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      INCS = "-I$(LUA_INCDIR) -I$(IMLIB2_INCDIR)",
      LIBFLAG = "$(LIBFLAG)",
      LIBS = "-L$(IMLIB2_LIBDIR) -lImlib2",
      LUABIN = "$(LUA_BINDIR)",
      LUAINC = "$(LUA_INCDIR)",
      LUALIB = "$(LUA_LIBDIR)"
   },
   install = {
      lib = {
         "limlib2.so"
      },
      lua = {
         "imlib2.lua"
      }
   },
   install_pass = false,
   patches = {
      ['libflag.patch'] = [[
--- old/Makefile	2008-01-22 16:32:27.000000000 -0200
+++ new/Makefile	2008-03-31 11:55:28.000000000 -0300
@@ -14,10 +14,12 @@
 
 SOS= limlib2.so
 
+LIBFLAG= -shared
+
 all: limlib2.so
 
 limlib2.so: $(OBJS)
-	$(CC) -o $@ -shared $(OBJS) $(LIBS)
+	$(CC) -o $@ $(LIBFLAG) $(OBJS) $(LIBS)
 
 .PHONY: clean doc test
 clean:
]]
   }
}
