package = "dromozoa-primitives"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-primitives/archive/v1.1.tar.gz";
  file = "dromozoa-primitives-1.1.tar.gz";
}
description = {
  summary = "Fundamental types and algorithms";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-primitives/";
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
