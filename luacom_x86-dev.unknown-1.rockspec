package = "LuaCOM_x86"
version = "dev.unknown-1"
source = {
  url = "https://github.com/sci-42ver/luacom_fixed/archive/bf67f145d8a80ad30c4cf434d6816ad9a59471a9.zip"
}
description = {
   summary = "Use COM libraries from Lua",
   detailed = [[
The fork of moteus's modified LuaCOM. In VsDevShell pwsh, run `$env:X86='yes';$env:DEBUG='yes';$env:LUA_DETAILED_SUFFIX=$Version;$env:LUA_SUFFIX=($env:LUA_DETAILED_SUFFIX -replace '(\d).(\d).*', '$1$2');$env:CFLAGS=" ";luarocks.bat install ...\luacom_x86-dev.unknown-1.rockspec` with `$MAKE='nmake /E'`. Tested with lua-5.4.2 directly using binary.]],
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
