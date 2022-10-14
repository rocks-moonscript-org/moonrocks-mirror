package = "wax"
version = "latest-1"

source = {
  url = "git+https://github.com/waxlab/wax",
  tag = "latest"
}

description = {
  homepage = "https://codeberg.org/waxlab/wax",
  license = "MIT",
  summary = "A crescent Lua library",
  maintainer = "Thadeu de Paula",
  detailed   = "An alternative extension to Lua standard library",
}

dependencies = { "lua >= 5.1, < 5.5" }

local build_vars
  = 'ROCKVER="'..version..'" '
  ..'CC="$(CC)" '
  ..'LD="$(LD)" '
  ..'CFLAGS="$(CFLAGS)" '
  ..'LIBFLAG="$(LIBFLAG)" '
  ..'LUA_BINDIR="$(LUA_BINDIR)" '
  ..'LUA_INCDIR="$(LUA_INCDIR)" '
  ..'OBJ_EXTENSION="$(OBJ_EXTENSION)" '
  ..'LIB_EXTENSION="$(LIB_EXTENSION)" '
  ..'LUA="$(LUA)" '

local install_vars
  = 'ROCKVER="'..version..'" '
  ..'INST_PREFIX="$(PREFIX)" '
  ..'INST_BINDIR="$(BINDIR)" '
  ..'INST_LIBDIR="$(LIBDIR)" '
  ..'INST_LUADIR="$(LUADIR)" '
  ..'INST_CONFDIR="$(CONFDIR)" '

build = {
  type = 'command',
  build_command   = build_vars .. '$(LUA) etc/run/make.lua build',
  install_command = install_vars .. '$(LUA) etc/run/make.lua install',
}
