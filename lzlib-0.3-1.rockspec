package="lzlib"
version="0.3-1"
source = {
   url = "http://luaforge.net/frs/download.php/3059/lzlib-0.3.tar.gz",
   md5 = "4ed15c23b2dc80b10d2cabbf1ed88a99"
}
description = {
   summary = "Lua bindings to the ZLib compression library",
   detailed = [[
      This package provides a library to access zlib library functions
      and also to read/write gzip files using an interface similar
      to the base io package.
   ]],
   homepage = "http://luaforge.net/projects/lzlib/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   ZLIB = {
      header = "zlib.h",
      library = "libz.so"
   }
}
build = {
   type = "make",
   install_pass = false,
   build_variables = {
      LUA = "$(LUA_DIR)",
      INCS = "-I$(LUA_INCDIR) -I$(ZLIB_INCDIR)",
      LIBS = "-L$(ZLIB_LIBDIR) -lz",
      LIBFLAG = "$(LIBFLAG)"
   },
   install = {
      lib = { "zlib.so", "gzip.so" },
   },
   patches = {
      ["fix_makefile.patch"] = [[
--- lzlib-0.3-old/Makefile	2008-01-28 16:54:07.000000000 -0200
+++ lzlib-0.3-new/Makefile	2008-01-28 16:54:42.000000000 -0200
@@ -18,6 +18,7 @@
 WARN= -g -Werror -Wall -pedantic #-ansi -pedantic -Wall
 INCS= -I$(LUAINC) -I$(ZLIB)
 LIBS= -L$(ZLIB) -lz -L$(LUALIB) -L$(LUABIN) # -llua51
+LIBFLAG= -shared
 
 MYLIB=lzlib
 
@@ -40,10 +41,10 @@
 	$(LUABIN)/lua -lluarc test_gzip.lua
 
 $(T_ZLIB): lzlib.o
-	$(CC) -o $@ -shared $< $(LIBS)
+	$(CC) -o $@ $(LIBFLAG) $< $(LIBS)
 
 $(T_GZIP): lgzip.o
-	$(CC) -o $@ -shared $< $(LIBS)
+	$(CC) -o $@ $(LIBFLAG) $< $(LIBS)
 
 clean:
 	rm -f *.o *.so core core.* a.out
]]
   }
}
