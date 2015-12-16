package = "dromozoa-amalgamate"
version = "1.2-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-amalgamate/archive/v1.2.tar.gz";
  file = "dromozoa-amalgamate-1.2.tar.gz";
}
description = {
  summary = "Amalgamation of Lua modules and scripts";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-amalgamate/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.amalgamate"] = "dromozoa/amalgamate.lua";
  };
  install = {
    bin = {
      ["dromozoa-amalgamate"] = "dromozoa-amalgamate";
    };
  };
}
