package="slnunicode"
version="1.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/1693/slnunicode-1.1.tar.bz2",
   md5 = "6cb97097b6a61e4232701dcd7948847c",
}
description = {
   summary = "A Unicode library",
   detailed = [[
      A Unicode support library for Lua, developed for
      the Selene database project.
   ]],
   homepage = "http://luaforge.net/projects/sln/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "module",
   modules = {
      unicode = {
         "slnunico.c",
         "slnudata.c"
      }
   },
   patches = {

["fix.patch"] = [[
--- old/slnunico.c  2006-07-26 14:20:04.000000000 -0300
+++ new/slnunico.c  2008-02-01 22:46:44.000000000 -0200
@@ -1321,7 +1321,6 @@
 	/* register unicode itself so require("unicode") works */
 	luaL_register(L, SLN_UNICODENAME,
 		uniclib + (sizeof uniclib/sizeof uniclib[0] - 1)); /* empty func list */
-	lua_pop(L, 1);
 	lua_pushinteger(L, MODE_ASCII);
 	luaI_openlib(L, SLN_UNICODENAME ".ascii", uniclib, 1);
 #ifdef SLNUNICODE_AS_STRING
@@ -1360,6 +1359,7 @@
 		}
 	}
 #endif
+	lua_settop(L, 2);
 	return 1;
 }

]]

   }

}
