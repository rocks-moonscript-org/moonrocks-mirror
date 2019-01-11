rockspec_format = "3.0"
package = "dromozoa-fuse"
version = "1.7-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-fuse/releases/download/v1.7/dromozoa-fuse-1.7.tar.gz";
}
description = {
  summary = "Lua bindings for libfuse";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-fuse/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
test = {
  type = "command";
  command = "./test.sh";
}
build = {
  type = "command";
  build_command = [[env PATH="$(LUA_BINDIR):$PATH" CPPFLAGS="$CPPFLAGS -I$(LUA_INCDIR)" CXXFLAGS="$CXXFLAGS -Wall -W -Wno-missing-field-initializers $(CFLAGS)" LDFLAGS="$LDFLAGS -L$(LUA_LIBDIR)" LUA="$(LUA)" ./configure --prefix="$(PREFIX)" && make]];
  install_command = [[make luadir="$(LUADIR)" luaexecdir="$(LIBDIR)/dromozoa" install]];
}
