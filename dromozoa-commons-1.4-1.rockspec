package = "dromozoa-commons"
version = "1.4-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-commons/archive/v1.4.tar.gz";
  file = "dromozoa-commons-1.4.tar.gz";
}
description = {
  summary = "Reusable Lua components";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-commons/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.commons.clone"] = "dromozoa/commons/clone.lua";
    ["dromozoa.commons.double"] = "dromozoa/commons/double.lua";
    ["dromozoa.commons.equal"] = "dromozoa/commons/equal.lua";
    ["dromozoa.commons.getmetafield"] = "dromozoa/commons/getmetafield.lua";
    ["dromozoa.commons.hash_table"] = "dromozoa/commons/hash_table.lua";
    ["dromozoa.commons.hash_table_impl"] = "dromozoa/commons/hash_table_impl.lua";
    ["dromozoa.commons.hash_table_pair"] = "dromozoa/commons/hash_table_pair.lua";
    ["dromozoa.commons.linked_hash_table"] = "dromozoa/commons/linked_hash_table.lua";
    ["dromozoa.commons.murmur_hash3"] = "dromozoa/commons/murmur_hash3.lua";
    ["dromozoa.commons.pairs"] = "dromozoa/commons/pairs.lua";
    ["dromozoa.commons.sequence"] = "dromozoa/commons/sequence.lua";
    ["dromozoa.commons.uint32"] = "dromozoa/commons/uint32.lua";
    ["dromozoa.commons.uint64"] = "dromozoa/commons/uint64.lua";
    ["dromozoa.commons.unpack"] = "dromozoa/commons/unpack.lua";
  };
}
