package = "dromozoa-unix"
version = "1.7-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-unix/releases/download/v1.7/dromozoa-unix-1.7.tar.gz";
}
description = {
  summary = "Lua bindings for UNIX system interface";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-unix/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "command";
  build_command = "env CPPFLAGS='-I$(LUA_INCDIR)' CXXFLAGS='-Wall -W -Wno-missing-field-initializers $(CFLAGS)' LDFLAGS='-L$(LUA_LIBDIR)' LUA='$(LUA_BINDIR)/$(LUA)' ./configure --prefix='$(PREFIX)' && make clean && make";
  install_command = "make luaexecdir='$(LIBDIR)/dromozoa' install";
}
