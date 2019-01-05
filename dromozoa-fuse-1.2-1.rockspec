rockspec_format = "3.0"
package = "dromozoa-fuse"
version = "1.2-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-fuse/archive/v1.2.tar.gz";
  file = "dromozoa-fuse-1.2.tar.gz";
}
description = {
  summary = "Lua bindings for libfuse";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-fuse/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "make";
  build_variables = {
    CFLAGS = "$(CFLAGS)";
    LIBFLAG = "$(LIBFLAG)";
    LUA_INCDIR = "$(LUA_INCDIR)";
    LUA_LIBDIR = "$(LUA_LIBDIR)";
  };
  install_variables = {
    LIBDIR = "$(LIBDIR)";
  };
}
