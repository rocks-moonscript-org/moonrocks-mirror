package = "dromozoa-json"
version = "1.0-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-json/archive/v1.0.tar.gz";
  file = "dromozoa-json-1.0.tar.gz";
}
description = {
  summary = "JSON encoder and decoder";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-json/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-utf8 >= 1.2";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.json"] = "dromozoa/json.lua";
    ["dromozoa.json.pure"] = "dromozoa/json/pure.lua";
  };
}
