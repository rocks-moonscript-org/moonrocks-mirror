package = "dromozoa-zmq"
version = "1.0-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-zmq/archive/v1.0.tar.gz";
  file = "dromozoa-zmq-1.0.tar.gz";
}
description = {
  summary = "Lua bindings for ZeroMQ";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-zmq/";
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
