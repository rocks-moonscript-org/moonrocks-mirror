package = "Lua-SDL2"
version = "2.0.3.3-1"
source = {
   url = "https://github.com/Tangent128/luasdl2/archive/v2.0.3-3.tar.gz",
   md5 = "45b48f2c865a1cdd67a6e514d10b6b47",
   dir = "luasdl2-2.0.3-3"
}
description = {
   summary = "Lua-SDL2 is a pure C binding of SDL 2.0 for Lua 5.1, JIT, 5.2, and 5.3",
   detailed = "Lua-SDL2 is a pure C binding of SDL 2.0 for Lua 5.1, JIT, 5.2, and 5.3",
   homepage = "https://github.com/Tangent128/luasdl2/",
   license = "ISC",
   maintainer = "Joseph Wallace <Tangent128@gmail.com>"
}
dependencies = {}
build = {
   type = "cmake",
   variables = {
      CMAKE_INSTALL_PREFIX = "$(PREFIX)",
      LUA_LIBDIR = "$(LIBDIR)",
      
      -- the code actually doesn't care about WITH_LUAVER apart from
      -- CMake's initial search for Lua header files, so directly setting
      -- the header path to the LuaRocks-provided one will build the
      -- library for the correct Lua version regardless of WITH_LUAVER
      WITH_LUAVER = "51",
      LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
      
      WITH_DOCS = "Off",
      
      -- Uncomment to disable any not desired/installed:
      --WITH_MIXER = "Off",
      --WITH_TTF = "Off",
      --WITH_NET = "Off",
      --WITH_IMAGE = "Off",
   },
}

