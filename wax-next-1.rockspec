package = "wax"
version = "next-1"
rockspec_format = "3.0"

source = {
  url = "git+https://codeberg.org/waxlab/wax",
  branch = "wax-next"
}

description = {
  homepage = "https://codeberg.org/waxlab/wax",
  license = "MIT",
  summary = "A Waxing Lua library",
  maintainer = "Thadeu A. C. de Paula",
  detailed   = "Lua package containing several libraries to extend Lua power in a Lua-ish way",
}

dependencies = { "lua >= 5.1, < 5.5" }

build = {
  type = 'make',
  build_variables = {
    VERSION      = version,
    CFLAGS       = "$(CFLAGS)",
    LIBFLAG      = "$(LIBFLAG)",
    LUA_BINDIR   = "$(LUA_BINDIR)",
    LUA_INCDIR   = "$(LUA_INCDIR)",
    OBJ_EXTENSION= "$(OBJ_EXTENSION)",
    LIB_EXTENSION= "$(LIB_EXTENSION)",
    LUA          = "$(LUA)",
  },
  install_variables = {
    VERSION      = version,
    INST_PREFIX  = "$(PREFIX)",
    INST_BINDIR  = "$(BINDIR)",
    INST_LIBDIR  = "$(LIBDIR)",
    INST_LUADIR  = "$(LUADIR)",
    INST_CONFDIR = "$(CONFDIR)",
    LUA          = "$(LUA)"
  }
}
test = {
  type = 'command',
  command = 'bash -c "env|sort"'
}
