package = "Lua-SDL2"
version = "2.0.3.3.1-1"
source = {
   url = "https://github.com/Tangent128/luasdl2/archive/v2.0.3-3.1.tar.gz",
   md5 = "a20a44836d637bb40e6212328185c357",
   dir = "luasdl2-2.0.3-3.1"
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
      
      -- directly setting the header path to the LuaRocks-provided one
      -- will build the library for the correct Lua version
      WITH_LUAVER = "user",
      LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
      
      CMAKE_INSTALL_PREFIX = "$(PREFIX)",
      LUA_LIBDIR = "$(LIBDIR)",
      
      WITH_DOCS = "Off",
      
      -- Uncomment to disable any not desired/installed:
      --WITH_MIXER = "Off",
      --WITH_TTF = "Off",
      --WITH_NET = "Off",
      --WITH_IMAGE = "Off",
   },
}


