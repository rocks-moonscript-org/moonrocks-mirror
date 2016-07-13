package = "dromozoa-dyld"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-dyld/archive/v1.1.tar.gz";
  file = "dromozoa-dyld-1.1.tar.gz";
}
description = {
  summary = "Dynamic linker utility";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-dyld/";
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
