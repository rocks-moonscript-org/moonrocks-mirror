rockspec_format = "3.0"
package = "dromozoa-multi"
version = "1.3-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-multi/releases/download/v1.3/dromozoa-multi-1.3.tar.gz";
}
description = {
  summary = "Multiple Lua states and native threads";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-multi/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
test = {
  type = "command";
  command = "make check";
}
build = {
  type = "command";
  build_command = [[env PATH="$(LUA_BINDIR):$PATH" CPPFLAGS="$CPPFLAGS -I$(LUA_INCDIR)" CXXFLAGS="$CXXFLAGS -Wall -W -Wno-missing-field-initializers $(CFLAGS)" LDFLAGS="$LDFLAGS -L$(LUA_LIBDIR)" LUA="$(LUA)" ./configure --prefix="$(PREFIX)" && make]];
  install_command = [[make luadir="$(LUADIR)" luaexecdir="$(LIBDIR)/dromozoa" install]];
}
