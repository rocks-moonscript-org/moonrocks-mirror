package = "luft"
version = "latest-1"

source = {
   url = "git+ssh://git@github.com/luawax/luft.git"
}

description = {
   homepage   = "https://github.com/luawax/luft",
   license    = "MIT",
   summary    = "Lua Folder Tree",
   maintainer = "Thadeu de Paula",
   detailed   = [[Use directories as standalone Lua apps or packages]],
}

local build_vars
  = 'ROCKVER="'..version..'" '
  ..'CC="$(CC)" '
  ..'CFLAGS="$(CFLAGS)" '
  ..'LIBFLAG="$(LIBFLAG)" '
  ..'LUA_BINDIR="$(LUA_BINDIR)" '
  ..'LUA_INCDIR="$(LUA_INCDIR)" '
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
  build_command   = build_vars .. '$(LUA) make.lua build',
  install_command = install_vars .. '$(LUA) make.lua install',
}

