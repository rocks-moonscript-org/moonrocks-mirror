rockspec_format = "3.0"
package = "dromozoa-serializer"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-serializer/archive/v1.1.tar.gz";
  file = "dromozoa-serializer-1.1.tar.gz";
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
    ["dromozoa.serializer.decode"] = "dromozoa/serializer/decode.lua";
    ["dromozoa.serializer.decode_v1"] = "dromozoa/serializer/decode_v1.lua";
    ["dromozoa.serializer.encode"] = "dromozoa/serializer/encode.lua";
    ["dromozoa.serializer.encode_v1"] = "dromozoa/serializer/encode_v1.lua";
    ["dromozoa.serializer.read"] = "dromozoa/serializer/read.lua";
    ["dromozoa.serializer.read_v1"] = "dromozoa/serializer/read_v1.lua";
    ["dromozoa.serializer.write"] = "dromozoa/serializer/write.lua";
    ["dromozoa.serializer.write_v1"] = "dromozoa/serializer/write_v1.lua";
  };
}
