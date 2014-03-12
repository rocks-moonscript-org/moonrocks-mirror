package="alien"
version="0.7.0-1"
source = {
   url = "https://github.com/downloads/mascarenhas/alien/alien-0.7.0.zip"
}
description = {
  summary = "Lua->C FFI",
  detailed = [[
    Alien lets a Lua application call load dynamic libraries and call C functions
    in a portable way, using libffi.
  ]],
  license = "MIT/X11",
  homepage = "http://mascarenhas.github.com/alien"
}
dependencies = {
  "lua >= 5.1"
}
external_dependencies = {
  FFI = { library = "ffi" }
}
build = {
  type = "command",
  build_command = "./configure LUA=$(LUA) CPPFLAGS='-I$(LUA_INCDIR) -I$(FFI_INCDIR)' LDFLAGS=-L$(FFI_LIBDIR) --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR)",
  install_command = "make install",
  platforms = {
    win32 = {
      type = "make",
      build_variables = {
        LIB_OPTION = "$(LUA_LIBDIR)\\lua51.lib $(FFI_LIBDIR)\\ffi.lib",
        CFLAGS = "$(CFLAGS) /I$(LUA_INCDIR) /I. /I$(FFI_INCDIR) /DWINDOWS /O2"
      },
      install_variables = {
        LUA_LIBDIR = "$(LIBDIR)",
        LUA_DIR = "$(LUADIR)",
        BIN_DIR = "$(BINDIR)",
        PREFIX = "$(PREFIX)"
      }
    }
  }
}
