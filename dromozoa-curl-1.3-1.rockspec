package = "dromozoa-curl"
version = "1.3-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-curl/archive/v1.3.tar.gz";
  file = "dromozoa-curl-1.3.tar.gz";
}
description = {
  summary = "Lua bindings for libcurl";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-curl/";
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
