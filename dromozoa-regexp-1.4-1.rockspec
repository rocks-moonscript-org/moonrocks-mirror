package = "dromozoa-regexp"
version = "1.4-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-regexp/archive/v1.4.tar.gz";
  file = "dromozoa-regexp-1.4.tar.gz";
}
description = {
  summary = "Regular expressions toolkit";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-regexp/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
  "dromozoa-graph";
  "dromozoa-tree";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.regexp"] = "dromozoa/regexp.lua";
    ["dromozoa.regexp.bitset_to_node"] = "dromozoa/regexp/bitset_to_node.lua";
    ["dromozoa.regexp.branch"] = "dromozoa/regexp/branch.lua";
    ["dromozoa.regexp.character_range"] = "dromozoa/regexp/character_range.lua";
    ["dromozoa.regexp.compile"] = "dromozoa/regexp/compile.lua";
    ["dromozoa.regexp.concat"] = "dromozoa/regexp/concat.lua";
    ["dromozoa.regexp.decompile"] = "dromozoa/regexp/decompile.lua";
    ["dromozoa.regexp.dump"] = "dromozoa/regexp/dump.lua";
    ["dromozoa.regexp.has_assertion"] = "dromozoa/regexp/has_assertion.lua";
    ["dromozoa.regexp.locale"] = "dromozoa/regexp/locale.lua";
    ["dromozoa.regexp.match"] = "dromozoa/regexp/match.lua";
    ["dromozoa.regexp.merge"] = "dromozoa/regexp/merge.lua";
    ["dromozoa.regexp.minimize"] = "dromozoa/regexp/minimize.lua";
    ["dromozoa.regexp.node_to_bitset"] = "dromozoa/regexp/node_to_bitset.lua";
    ["dromozoa.regexp.node_to_nfa"] = "dromozoa/regexp/node_to_nfa.lua";
    ["dromozoa.regexp.parse"] = "dromozoa/regexp/parse.lua";
    ["dromozoa.regexp.powerset_construction"] = "dromozoa/regexp/powerset_construction.lua";
    ["dromozoa.regexp.product_construction"] = "dromozoa/regexp/product_construction.lua";
    ["dromozoa.regexp.remove_assertions"] = "dromozoa/regexp/remove_assertions.lua";
    ["dromozoa.regexp.set_token"] = "dromozoa/regexp/set_token.lua";
    ["dromozoa.regexp.unparse"] = "dromozoa/regexp/unparse.lua";
    ["dromozoa.regexp.write_graphviz"] = "dromozoa/regexp/write_graphviz.lua";
  };
}
