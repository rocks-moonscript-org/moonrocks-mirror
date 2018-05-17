package = "dromozoa-png"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-png/archive/v1.1.tar.gz";
  file = "dromozoa-png-1.1.tar.gz";
}
description = {
  summary = "Lua bindings for libpng";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-png/";
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
