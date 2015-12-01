package = "dromozoa-regexp"
version = "1.9-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-regexp/archive/v1.9.tar.gz";
  file = "dromozoa-regexp-1.9.tar.gz";
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
    ["dromozoa.regexp.automaton"] = "dromozoa/regexp/automaton.lua";
    ["dromozoa.regexp.automaton.compile"] = "dromozoa/regexp/automaton/compile.lua";
    ["dromozoa.regexp.automaton.decompile"] = "dromozoa/regexp/automaton/decompile.lua";
    ["dromozoa.regexp.automaton.graphviz_visitor"] = "dromozoa/regexp/automaton/graphviz_visitor.lua";
    ["dromozoa.regexp.automaton.normalize_assertions"] = "dromozoa/regexp/automaton/normalize_assertions.lua";
    ["dromozoa.regexp.automaton.powerset_construction"] = "dromozoa/regexp/automaton/powerset_construction.lua";
    ["dromozoa.regexp.automaton.product_construction"] = "dromozoa/regexp/automaton/product_construction.lua";
    ["dromozoa.regexp.automaton.to_ast"] = "dromozoa/regexp/automaton/to_ast.lua";
    ["dromozoa.regexp.automaton.tokens"] = "dromozoa/regexp/automaton/tokens.lua";
    ["dromozoa.regexp.graphviz"] = "dromozoa/regexp/graphviz.lua";
    ["dromozoa.regexp.match"] = "dromozoa/regexp/match.lua";
    ["dromozoa.regexp.syntax_tree"] = "dromozoa/regexp/syntax_tree.lua";
    ["dromozoa.regexp.syntax_tree.condition_to_node"] = "dromozoa/regexp/syntax_tree/condition_to_node.lua";
    ["dromozoa.regexp.syntax_tree.denormalize"] = "dromozoa/regexp/syntax_tree/denormalize.lua";
    ["dromozoa.regexp.syntax_tree.ere_parser"] = "dromozoa/regexp/syntax_tree/ere_parser.lua";
    ["dromozoa.regexp.syntax_tree.ere_unparser"] = "dromozoa/regexp/syntax_tree/ere_unparser.lua";
    ["dromozoa.regexp.syntax_tree.graphviz_visitor"] = "dromozoa/regexp/syntax_tree/graphviz_visitor.lua";
    ["dromozoa.regexp.locale"] = "dromozoa/regexp/locale.lua";
    ["dromozoa.regexp.syntax_tree.node_to_condition"] = "dromozoa/regexp/syntax_tree/node_to_condition.lua";
    ["dromozoa.regexp.syntax_tree.normalize"] = "dromozoa/regexp/syntax_tree/normalize.lua";
    ["dromozoa.regexp.syntax_tree.to_nfa"] = "dromozoa/regexp/syntax_tree/to_nfa.lua";
  };
}
