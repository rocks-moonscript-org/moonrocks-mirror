package = "dromozoa-parser"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-parser/archive/v1.1.tar.gz";
  file = "dromozoa-parser-1.1.tar.gz";
}
description = {
  summary = "LALR(1) parser generator";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-parser/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
  "dromozoa-tree";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.parser.builder.grammar"] = "dromozoa/parser/builder/grammar.lua";
    ["dromozoa.parser.builder.nonterminal_symbol"] = "dromozoa/parser/builder/nonterminal_symbol.lua";
    ["dromozoa.parser.builder.scanner"] = "dromozoa/parser/builder/scanner.lua";
    ["dromozoa.parser.builder.scanners"] = "dromozoa/parser/builder/scanners.lua";
    ["dromozoa.parser.builder.symbol_table"] = "dromozoa/parser/builder/symbol_table.lua";
    ["dromozoa.parser.builder.terminal_symbol"] = "dromozoa/parser/builder/terminal_symbol.lua";
    ["dromozoa.parser.driver"] = "dromozoa/parser/driver.lua";
    ["dromozoa.parser.grammar"] = "dromozoa/parser/grammar.lua";
    ["dromozoa.parser.scanners"] = "dromozoa/parser/scanners.lua";
  };
}
