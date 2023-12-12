package = "dromozoa-unix"
version = "1.71-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-unix/releases/download/v1.71/dromozoa-unix-1.71.tar.gz";
}
description = {
  summary = "Lua bindings for UNIX system interface";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-unix/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "command";
  build_command = [[env PATH="$(LUA_BINDIR):$PATH" CPPFLAGS="$CPPFLAGS -I$(LUA_INCDIR)" CXXFLAGS="$CXXFLAGS -Wall -W -Wno-missing-field-initializers $(CFLAGS)" LUA="$(LUA)" ./configure --prefix="$(PREFIX)" && make]];
  install_command = [[make luadir="$(LUADIR)" luaexecdir="$(LIBDIR)/dromozoa" install]];
}
