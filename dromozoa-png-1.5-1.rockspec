rockspec_format = "3.0"
package = "dromozoa-png"
version = "1.5-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-png/archive/v1.5.tar.gz";
  file = "dromozoa-png-1.5.tar.gz";
}
description = {
  summary = "Lua bindings for libpng";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-png/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
test = {
  type = "command";
  command = "./test.sh";
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
