package = "MoonGLFW"
version = "1.0-1"
source = {
    url = "",
}
description = {
   summary = "Forkedb for lua Rocks",
   detailed = [[
      This is an example for the LuaRocks tutorial.
      Here we would put a detailed, typically
      paragraph-long description.
   ]],
   homepage = "http://...", -- We don't have one yet
   license = "MIT" -- or whatever you like
}
dependencies = {
   "lua ~> 5.3"
   -- If you depend on other rocks, add them here
}
build = {
  type = "make",
  install_variables = {
    LUA_LIBDIR = "$(LIBDIR)",
    LUA_DIR = "$(LUADIR)",
    BIN_DIR = "$(BINDIR)"
  },
  platforms = {
    MAC = {
      type = "make",
      build_variables = {
        LUA_DIR = "$(LUA_LIBDIR)src/moonGlfw.dylib",
      }
    }
  }
}
