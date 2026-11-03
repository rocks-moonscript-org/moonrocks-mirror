package = "kpqc"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/KpqC/kpqc-lua.git",
   tag = "v0.1.0"
}

description = {
   summary = "Lua bindings for KpqC post-quantum algorithms",
   detailed = [[
Synchronous Lua APIs for the AIMer and HAETAE signature schemes and the
NTRU+ and SMAUG-T key encapsulation mechanisms.
]],
   homepage = "https://github.com/KpqC/kpqc-lua",
   license = "MIT"
}

supported_platforms = {
   "linux",
   "macosx"
}

dependencies = {
   "lua >= 5.1, < 5.6"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE = "Release",
      LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
      KPQC_LUA_INSTALL_DIR = "$(LIBDIR)"
   }
}
