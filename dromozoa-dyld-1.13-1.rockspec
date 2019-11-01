package = "dromozoa-dyld"
version = "1.13-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-dyld/archive/v1.13.tar.gz";
  file = "dromozoa-dyld-1.13.tar.gz";
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
  };
  install_variables = {
    LIBDIR = "$(LIBDIR)";
  };
}
