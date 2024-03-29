package = "LuaCOM_x86"
version = "dev.unknown-2"
source = {
  url = "https://github.com/sci-42ver/luacom_fixed/archive/87da01a6453a7eabf372b9418cbd274bd73380a7.zip"
}
description = {
   summary = "Use COM libraries from Lua",
   detailed = [[
Use the same process as dev.unknown-2 but using source code built lua. Tested with lua-5.4.6 built from source with nmake.]],
   license = "MIT/X11",
   homepage = "http://luaforge.net/projects/luacom/"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   platforms = {
      win32 = {
         type = "make",
         build_variables = {
            CFLAGS     = "",
            LIBFLAG    = "$(LIBFLAG)",
            LUA_LIBDIR = "$(LUA_LIBDIR)",
            LUA_BINDIR = "$(LUA_BINDIR)",
            LUA_INCDIR = "$(LUA_INCDIR)",
            LUALIB     = "$(LUALIB)",
            LUA        = "$(LUA)",
         },
         build_target = "lc_dll",
         install_variables = {
            LUA_LIBDIR = "$(LIBDIR)",
         }
      }
   }
}
