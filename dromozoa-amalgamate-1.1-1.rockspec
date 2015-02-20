package = "dromozoa-amalgamate"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-amalgamate/archive/v1.1.tar.gz";
  file = "dromozoa-amalgamate-1.1.tar.gz";
}
description = {
  summary = "Amalgamation of Lua modules and scripts";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-amalgamate/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "lua >= 5.2";
}
build = {
  type = "builtin";
  modules = {};
  install = {
    bin = {
      ["dromozoa-amalgamate"] = "dromozoa-amalgamate";
    };
  };
}
