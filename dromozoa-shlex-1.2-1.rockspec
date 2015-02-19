package = "dromozoa-shlex"
version = "1.2-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-shlex/archive/v1.2.tar.gz";
  file = "dromozoa-shlex-1.2.tar.gz";
}
description = {
  summary = "Simple lexical analyzer like Python's shlex";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-shlex/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.shlex"] = "dromozoa/shlex.lua";
  };
}
