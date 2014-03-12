package="LuaGRAPH"
version="1.0.2-2"
source = {
   url = "http://luaforge.net/frs/download.php/2088/luagraph-1.0.2.tar.gz",
   md5 = "1de95eb5448067d275dbf82566c1648b"
}
description = {
   summary = "A binding to the graphviz graph library",
   detailed = [[
      LuaGRAPH is a binding to the graphviz library.
      It allows to create, manipulate, layout and render graphs
      using the Lua programming language. 
   ]],
   homepage = "http://luagraph.luaforge.net",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   GRAPHVIZ = {
      header = "graphviz/graph.h"
   }
}
build = {
   type = "make",
   variables = {
      INSTALL_ROOT = "$(PREFIX)",
      INSTALL_SHARE = "$(LUADIR)",
      INSTALL_LIB = "$(LIBDIR)",
      LUAINC = "$(LUA_INCDIR)",
      LDFLAGS = "$(LIBFLAG) -L$(GRAPHVIZ_LIBDIR)",
      GVROOT = "$(GRAPHVIZ_DIR)",
      CFLAGS = "$(CFLAGS)"
   }
}
