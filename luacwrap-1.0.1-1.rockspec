package = "luacwrap"

version = "1.0.1-1"

source = {
  url = "git://github.com/oberhofer/luacwrap.git",
  tag = "v1.0.1",
}

description = {
  summary = "LuaCwrap C structure wrapper.",
  detailed = [[
    LuaCwrap is a wrapper for C datatypes written in pure C. It 
    utilizes metadata (aka type descriptors) to describe the 
    layout and names of structures, unions, arrays and buffers.
  ]],
  homepage = "http://github.com/oberhofer/luacwrap",
  license = "MIT/X11"
}

supported_platforms = { "linux", "windows" }

dependencies = {
  "lua == 5.1"
}

build = {
  type = "make",
  install_variables = {
    LUA_LIBDIR = "$(LIBDIR)",
    LUA_DIR = "$(LUADIR)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    BIN_DIR = "$(BINDIR)",
    PREFIX = "$(PREFIX)"
  },
  platforms = {
    linux = {
      build_variables = {
        LIB_OPTION = "-shared",
        CFLAGS = '$(CFLAGS) -I$(LUA_INCDIR) -DLINUX',
        LIB_EXT = '.so'
      },
    },
    win32 = {
      build_variables = {
        LIB_OPTION = "$(LUA_LIBDIR)\\lua5.1.lib",
        CFLAGS = "$(CFLAGS) /I$(LUA_INCDIR) /DWINDOWS",
      }
    }
  }
}
