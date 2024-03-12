rockspec_format = "3.0"
package = "kiwi"
version = "0.2.2-1"
source = {
   url = "git+https://github.com/jkl1337/ljkiwi",
   tag = "v0.2.2",
}
description = {
   summary = "LuaJIT FFI and Lua binding for C++ and Rust kiwi constraint solvers.",
   detailed = [[
      kiwi is a LuaJIT FFI and Lua binding for the Kiwi constraint solver with support
      for both Rust and C++ implementations. Kiwi is a fast implementation of the Cassowary
      constraint solving algorithm. The kiwi package provides reasonably efficient bindings
      using the LuaJIT FFI and convential Lua C bindings.]],
   license = "MIT",
   issues_url = "https://github.com/jkl1337/ljkiwi/issues",
   maintainer = "John Luebs",
}
dependencies = {
   "lua >= 5.1",
}

build = {
   type = "make",
   build_variables = {
      LUAROCKS = "1",
      LUA = "$(LUA)",
      CFLAGS = "$(CFLAGS)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)",
      LUALIB = "$(LUALIB)",
      LIBFLAG = "$(LIBFLAG)",
      LIB_EXT = "$(LIB_EXTENSION)",
      OBJ_EXT = "$(OBJ_EXTENSION)",
   },
   install_variables = {
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      LIB_EXT = "$(LIB_EXTENSION)",
   },
}
