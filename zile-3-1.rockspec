package = "zile"
version = "3-1"
description = {
  summary = "Zile Implements Lua Editors",
  homepage = "http://www.gnu.org/s/zile",
  license = "GPLv3+",
  detailed = "An editor building kit, bundled with zmacs: a lightweight Emacs clone.",
}
source = {
  url = "http://github.com/gvvaughan/zile/archive/release-v3.zip",
  dir = "zile-release-v3",
}
dependencies = {
  "alien >= 0.7.0",
  "lua >= 5.2",
  "luaposix >= 29",
  "lua-stdlib >= 35",
  "lrexlib-gnu >= 2.7.1",
}
external_dependencies = nil
build = {
  build_command = "./configure LUA='$(LUA)' LUA_INCLUDE='-I$(LUA_INCDIR)' --prefix='$(PREFIX)' --libdir='$(LIBDIR)' --datadir='$(LUADIR)' && make clean all",
  copy_directories = {
    "bin",
    "doc",
  },
  type = "command",
  install_command = "make install luadir='$(LUADIR)'",
}
