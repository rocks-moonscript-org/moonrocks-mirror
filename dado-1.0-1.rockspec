package = "Dado"

version = "1.0-1"

description = {
   summary = "Database Facilities for LuaSQL",
   detailed = [[
      Dado is a package that offers some facilities implemented over LuaSQL
      connection objects. Its main goals are: better error messages, iterators
      to access the result set and more homogeneity in some commonly used
      database operations.
   ]]
}

dependencies = {
   "lua >= 5.1"
   -- no specific version of LuaSQL can be pinned down as a dependency,
   -- since Dado can load any LuaSQL driver at runtime.
}

source = {
   url = "http://luaforge.net/frs/download.php/3318/dado-1.0.tar.gz",
   md5 = "aeb49071744c3c1e861859bdc23f8a67",
}

build = {
   type = "make",
   build_pass = false,
   install_target = "install",
   install_variables = {
      DOC_DIR = "$(PREFIX)/doc",
      BIN_DIR = "$(BINDIR)",
      LUA_DIR = "$(LUADIR)",
      LUA = "$(LUA)"
   },
   patches = {
      ["interpreter-call.patch"] = [[
--- dado-1.0/Makefile.old	2008-04-24 19:30:55.000000000 -0300
+++ dado-1.0/Makefile	2008-04-24 19:30:45.000000000 -0300
@@ -3,6 +3,7 @@
 PKG= dado
 V= 1.0
 DIST_DIR= $(PKG)-$V
+LUA= /usr/local/bin/lua5.1
 LUA_DIR= /usr/local/share/lua/5.1
 DADO_DIR= $(LUA_DIR)/dado
 STRING_EXTRA_DIR= $(LUA_DIR)/string
@@ -50,7 +51,7 @@
 	cp $(DADO_SRCS) $(DADO_DIR)
 
 installprod: installsrc installrmck
-	$(BIN_DIR)/rm_check.lua $(STRING_EXTRA_DIR)/* $(TABLE_EXTRA_DIR)/* $(DADO_DIR)/*
+	$(LUA) $(BIN_DIR)/rm_check.lua $(STRING_EXTRA_DIR)/* $(TABLE_EXTRA_DIR)/* $(DADO_DIR)/*
 
 installrmck: $(RMCK)
 	mkdir -p $(BIN_DIR)
]]

   }
}
