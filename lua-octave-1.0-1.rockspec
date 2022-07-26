package = "lua-octave"
version = "1.0-1"
source = {
   url = "git://github.com/agraef/lua-octave",
   tag = "1.0"
}
description = {
   summary = "Embeds an Octave interpreter in your Lua programs.",
   detailed = [[
      This module provides a basic interface between Lua and Octave. The
      operations of this module allow you to execute arbitrary commands in the
      Octave interpreter, set and retrieve variable values in the interpreter,
      and invoke Lua callbacks from Octave.
   ]],
   homepage = "https://github.com/agraef/lua-octave",
   license = "BSD-3"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   build_variables = {
      CFLAGS="$(CFLAGS)",
      LIBFLAG="$(LIBFLAG)",
      -- this doesn't seem to work as advertized
      --LUA_LIBDIR="$(LUA_LIBDIR)",
      LUA_BINDIR="$(LUA_BINDIR)",
      LUA_INCDIR="$(LUA_INCDIR)",
      LUA="$(LUA)",
   },
   install_variables = {
      INST_PREFIX="$(PREFIX)",
      INST_BINDIR="$(BINDIR)",
      INST_LIBDIR="$(LIBDIR)",
      INST_LUADIR="$(LUADIR)",
      INST_CONFDIR="$(CONFDIR)",
   }
}
