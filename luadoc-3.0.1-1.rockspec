package = "LuaDoc"
version = "3.0.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/3185/luadoc-3.0.1.tar.gz"
}
description = {
   summary = "LuaDoc is a documentation tool for Lua source code",
   detailed = [[
      LuaDoc is a documentation generator tool for Lua source code.
      It parses the declarations and documentation comments in a set of
      Lua source files and produces a set of XHTML pages describing the
      commented declarations and functions.

      The output is not limited to XHTML. Other formats can be generated
      by implementing new doclets. The format of the documentation comments
      is also flexible and can be customized by implementing new taglets.
   ]],
   license = "MIT/X11",
   homepage = "http://luadoc.luaforge.net/"
}
dependencies = {
   "lualogging >= 1.1.3",
   "luafilesystem >= 1.2.1",
}
build = {
   type = "make",
   variables = {
      LUA_DIR = "$(LUADIR)",
      SYS_BINDIR = "$(BINDIR)"
   },
   patches = {

      ["package_path_trick_fix.patch"] = 

[[
diff -Naur luadoc-3.0.1/src/luadoc/doclet/html.lua luadoc-3.0.1-new/src/luadoc/doclet/html.lua
--- luadoc-3.0.1/src/luadoc/doclet/html.lua	2007-12-21 15:50:48.000000000 -0200
+++ luadoc-3.0.1-new/src/luadoc/doclet/html.lua	2008-02-28 01:59:53.000000000 -0300
@@ -18,6 +18,7 @@
 local lp = require "luadoc.lp"
 local luadoc = require"luadoc"
 local package = package
+local package_path = package.path
 local string = require"string"
 local table = require"table"
 
@@ -50,7 +51,8 @@
 	local templatepath = options.template_dir .. template
 	
 	-- search using package.path (modified to search .lp instead of .lua
-	local search_path = string.gsub(package.path, "%.lua", "")
+	local search_path = string.gsub(package_path, "%.lua;", ";")
+	search_path = string.gsub(search_path, "%.lua$", "")
 	local templatepath = search(search_path, templatepath)
 	assert(templatepath, string.format("template `%s' not found", template))
 	
]]

   }
}
