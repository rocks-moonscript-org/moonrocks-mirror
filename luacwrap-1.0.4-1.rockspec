package = "luacwrap"

version = "1.0.4-1"

source = {
  url    = "git://github.com/oberhofer/luacwrap.git",
  tag = "v1.0.4",
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
  copy_directories = { "doc" },
  install_variables = {
    INST_PREFIX="$(PREFIX)",
    INST_BINDIR="$(BINDIR)",
    INST_LIBDIR="$(LIBDIR)",
    INST_LUADIR="$(LUADIR)",
    INST_CONFDIR="$(CONFDIR)",
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
