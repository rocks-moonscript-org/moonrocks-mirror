package = "mecab"
version = "1.0-7"
source = {
   url = "git://github.com/polm/lua-mecab",
   tag = "v1.0.7"
}
description = {
   summary = "Wrapper for Mecab Japanese morphological analyzer.",
   detailed = [[
      Wraps mecab so you can tokenize Japanese.
   ]],
   homepage = "https://github.com/polm/lua-mecab",
   license = "WTFPL"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "make",
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      LIBFLAG = "$(LIBFLAG)",
      LUA = "$(LUA)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)"
   },
   install_variables = {
      INST_BINDIR = "$(BINDIR)",
      INST_CONFDIR = "$(CONFDIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      INST_PREFIX = "$(PREFIX)"
   }
}
