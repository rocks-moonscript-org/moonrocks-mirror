package = "slingshot"
version = "7-1"
description = {
  detailed = "A framework for automatic rockspecs creation and simplified release thereof.",
  homepage = "http://github.com/gvvaughan/slingshot",
  license = "MIT/X11, GPLv3+",
  summary = "Slingshot releases rocks!",
}
source = {
  dir = "slingshot-release-v7",
  url = "http://github.com/gvvaughan/slingshot/archive/release-v7.zip",
}
dependencies = {
  "lua >= 5.1",
  "lyaml",
}
external_dependencies = nil
build = {
  build_command = "./configure LUA='$(LUA)' LUA_INCLUDE='-I$(LUA_INCDIR)' --prefix='$(PREFIX)' --libdir='$(LIBDIR)' --datadir='$(LUADIR)' --datarootdir='$(PREFIX)' && make clean all",
  copy_directories = {},
  install_command = "make install luadir='$(LUADIR)'",
  type = "command",
}
