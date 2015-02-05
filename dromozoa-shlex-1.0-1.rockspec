package = "dromozoa-shlex"
version = "1.0-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-shlex/archive/v1.0.tar.gz";
  file = "dromozoa-shlex-1.0.tar.gz";
}
description = {
  summary = "Simple lexical analyzer like Python's shlex";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-shlex/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-utf8 >= 1.1";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.shlex"] = "dromozoa/shlex.lua";
  };
}
