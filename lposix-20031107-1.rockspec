package="lposix"
version="20031107-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua//5.0/lposix.tar.gz",
   md5 = "f22871247e444412a901d179028a0d82",
   dir = "posix"
}
description = {
   summary = "A POSIX library for Lua.",
   detailed = [[
      A library binding a number of POSIX functions, which supplements the
      basic set of ANSI C functions provided by the standard Lua libraries.
      POSIX is a Portable Operating System Interface standard defined by IEEE.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lposix",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "module",
   modules = {
      posix = "lposix.c"
   },
   patches = {

["01-luaL_findstring.patch"] = [[
Patch from the Debian project provided by Enrico Tassi
http://svn.debian.org/viewsvn/pkg-lua/packages/lua-posix/trunk/debian/patches/
diff -urNad trunk~/lposix.c trunk/lposix.c
--- trunk~/lposix.c	2003-11-06 01:23:48.000000000 +0100
+++ trunk/lposix.c	2006-08-26 15:31:41.000000000 +0200
@@ -33,6 +33,15 @@
 #define MYBUFSIZ 512
 #endif
 
+static int luaL_findstring (const char *name, const char *const list[]) {
+  int i;
+  for (i=0; list[i]; i++)
+    if (strcmp(list[i], name) == 0)
+      return i;
+  return -1;  /* name not found */
+}
+
+
 #include "modemuncher.c"
 
 static const char *filetype(mode_t m)
]],

["02-luaL_register.patch"] = [[
Patch from the Debian project provided by Enrico Tassi
http://svn.debian.org/viewsvn/pkg-lua/packages/lua-posix/trunk/debian/patches/
diff -urNad trunk~/lposix.c trunk/lposix.c
--- trunk~/lposix.c	2003-11-06 01:23:48.000000000 +0100
+++ trunk/lposix.c	2006-09-03 10:05:55.000000000 +0200
@@ -804,7 +804,7 @@
 
 LUALIB_API int luaopen_posix (lua_State *L)
 {
-	luaL_openlib(L, MYNAME, R, 0);
+	luaL_register(L, MYNAME, R);
 	lua_pushliteral(L,"version");		/** version */
 	lua_pushliteral(L,MYVERSION);
 	lua_settable(L,-3);
]],

["03-CLK_TCK.patch"] = [[
Patch from the Debian project provided by Enrico Tassi
http://svn.debian.org/viewsvn/pkg-lua/packages/lua-posix/trunk/debian/patches/
diff -urNad trunk~/lposix.c trunk/lposix.c
--- trunk~/lposix.c	2003-11-06 01:23:48.000000000 +0100
+++ trunk/lposix.c	2007-05-07 14:00:01.000000000 +0200
@@ -33,6 +33,9 @@
 #define MYBUFSIZ 512
 #endif
 
+#ifndef CLK_TCK
+# define CLK_TCK CLOCKS_PER_SEC
+#endif
 #include "modemuncher.c"
 
 static const char *filetype(mode_t m)
]]

   }

}
