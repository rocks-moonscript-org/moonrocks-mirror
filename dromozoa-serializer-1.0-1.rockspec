rockspec_format = "3.0"
package = "dromozoa-serializer"
version = "1.0-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-serializer/archive/v1.0.tar.gz";
  file = "dromozoa-serializer-1.0.tar.gz";
}
description = {
  summary = "Lua serialization utility";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-serializer/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
test = {
  type = "command";
  command = "./test.sh";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.serializer"] = "dromozoa/serializer.lua";
    ["dromozoa.serializer.read"] = "dromozoa/serializer/read.lua";
    ["dromozoa.serializer.write"] = "dromozoa/serializer/write.lua";
  };
}
