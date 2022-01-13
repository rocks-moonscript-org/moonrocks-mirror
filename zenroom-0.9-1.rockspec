package = "zenroom"
version = "0.9-1"
source = {
   url = "git://github.com/dyne/lua-zenroom.git",
}
description = {
   summary = "zenroom crypto language for Lua",
   detailed = [[
Portable cryptographic module to execute crypto computations in Lua using the Zencode domain specific language.
]],
   license = "AGPLv3",
   homepage = "https://github.com/dyne/lua-zenroom",
}
supported_platforms = {
   "unix", "windows", "osx"
}
dependencies = {
   "lua ~> 5.1",
}
build = {
   type = "make",
   build_variables = {
      LUA_CFLAGS="$(CFLAGS)",
      LUA_LDFLAGS="$(LIBFLAG)",
      LUA_LIBDIR="$(LUA_LIBDIR)",
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
   },
   install = {
      lua = {
	 ["zenroom.init"] = "src/lua/init.lua"
      }
   }
}
