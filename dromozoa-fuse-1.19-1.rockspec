rockspec_format = "3.0"
package = "dromozoa-fuse"
version = "1.19-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-fuse/releases/download/v1.19/dromozoa-fuse-1.19.tar.gz";
}
description = {
  summary = "Lua bindings for libfuse";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-fuse/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
test = {
  type = "command";
  command = "make check";
}
build = {
  type = "command";
  build_command = [[env PATH="$(LUA_BINDIR):$PATH" CPPFLAGS="$CPPFLAGS -I$(LUA_INCDIR)" CXXFLAGS="$CXXFLAGS -Wall -W -Wno-missing-field-initializers $(CFLAGS)" LUA="$(LUA)" ./configure --prefix="$(PREFIX)" && make]];
  install_command = [[make luadir="$(LUADIR)" luaexecdir="$(LIBDIR)/dromozoa" install]];
}
