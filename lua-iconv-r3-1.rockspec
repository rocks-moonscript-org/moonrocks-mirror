package = "Lua-iconv"
version = "r3-1"
source = {
   url = "http://luaforge.net/frs/download.php/2129/lua-iconv-r3.tar.gz",
}
description = {
   summary = "Lua binding to the iconv",
   detailed = [[
     Lua binding to the POSIX 'iconv' library, which converts a sequence of
     characters from one codeset into a sequence of corresponding characters
     in another codeset.
   ]],
   license = "MIT/X11",
   homepage = "http://luaforge.net/projects/lua-iconv/"
}
dependencies = {
   "lua >= 5.1",
}
external_dependencies = {
   ICONV = {
      header = "iconv.h"
   }
}
build = {
   type = "make",
   variables = {
      CFLAGS = "-I$(LUA_INCDIR) -O3 -Wall",
      LIBFLAG = "$(LIBFLAG)",
      LIBS = "",
      INSTALL_PATH = "$(LIBDIR)"
   },
   patches = {
      ["remove_hardcoded_shared.patch"] = 

[[
--- lua-iconv-r3-old/Makefile	2008-02-28 02:56:26.000000000 -0300
+++ lua-iconv-r3-new/Makefile	2008-02-28 02:56:41.000000000 -0300
@@ -31,6 +31,7 @@
 CFLAGS = `pkg-config $(LUAPKG) --cflags` -O3 -Wall
 INSTALL_PATH = `pkg-config $(LUAPKG) --variable=INSTALL_CMOD`
 LIBS = `pkg-config $(LUAPKG) --libs`
+LIBFLAG = -shared
 
 ## If your system doesn't have pkg-config, comment out the previous lines and
 ## uncomment and change the following ones according to your building
@@ -42,7 +43,7 @@
 
 
 iconv.so: luaiconv.c
-	$(CC) -o iconv.so -shared $(LIBS) $(CFLAGS) luaiconv.c
+	$(CC) -o iconv.so $(LIBFLAG) $(LIBS) $(CFLAGS) luaiconv.c
 
 install: iconv.so
 	make test
]]

   }
}
