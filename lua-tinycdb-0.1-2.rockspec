local makefile_patch = [[
--- lua-tinycdb-0.1/Makefile.orig	2008-09-30 17:13:17.000000000 -0300
+++ lua-tinycdb-0.1/Makefile	2008-09-30 17:13:47.000000000 -0300
@@ -21,8 +21,10 @@
 
 all: $(SOS)
 
+LIBFLAG=-shared
+
 $(SOS): $(OBJS)
-	$(CC) -o $@ -shared $(OBJS) $(LIBS)
+	$(CC) -o $@ $(LIBFLAG) $(OBJS) $(LIBS)
 
 .PHONY: clean test distr
 clean:
]]

package="lua-tinycdb"
version="0.1-2"
source = {
   url = "http://luaforge.net/frs/download.php/3046/lua-tinycdb-0.1.tar.gz",
   md5 = "f03b8ae5dec57a8ad7454c554f2f6aeb",
}
description = {
   summary = "Provides support for creating and reading constant databases",
   homepage = "http://asbradbury.org/projects/lua-tinycdb/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   install_pass = false,
   build_variables = {
      LUAINC = "$(LUA_INCDIR)",
      LUALIB = "$(LUA_LIBDIR)",
      LUABIN = "$(LUA_BINDIR)",
      LIBFLAG = "$(LIBFLAG)"
   },
   install = {
      lib = { "cdb.so" },
   },
   patches = {
      makefile_patch = makefile_patch
   }
}
