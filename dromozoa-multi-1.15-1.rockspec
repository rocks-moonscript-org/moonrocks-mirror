rockspec_format = "3.0"
package = "dromozoa-multi"
version = "1.15-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-multi/archive/v1.15.tar.gz";
  file = "dromozoa-multi-1.15.tar.gz";
}
description = {
  summary = "Multiple Lua states and native threads";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-multi/";
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
