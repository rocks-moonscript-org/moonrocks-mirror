package = "dromozoa-parser"
version = "1.5-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-parser/archive/v1.5.tar.gz";
  file = "dromozoa-parser-1.5.tar.gz";
}
description = {
  summary = "Parser generator toolkit";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-parser/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.parser.builder"] = "dromozoa/parser/builder.lua";
    ["dromozoa.parser.builder.atom"] = "dromozoa/parser/builder/atom.lua";
    ["dromozoa.parser.builder.build"] = "dromozoa/parser/builder/build.lua";
    ["dromozoa.parser.builder.lexer"] = "dromozoa/parser/builder/lexer.lua";
    ["dromozoa.parser.builder.pattern"] = "dromozoa/parser/builder/pattern.lua";
    ["dromozoa.parser.builder.precedence"] = "dromozoa/parser/builder/precedence.lua";
    ["dromozoa.parser.builder.production"] = "dromozoa/parser/builder/production.lua";
    ["dromozoa.parser.grammar"] = "dromozoa/parser/grammar.lua";
    ["dromozoa.parser.grammar.write_conflicts"] = "dromozoa/parser/grammar/write_conflicts.lua";
    ["dromozoa.parser.grammar.write_graphviz"] = "dromozoa/parser/grammar/write_graphviz.lua";
    ["dromozoa.parser.grammar.write_set_of_items"] = "dromozoa/parser/grammar/write_set_of_items.lua";
    ["dromozoa.parser.grammar.write_table"] = "dromozoa/parser/grammar/write_table.lua";
    ["dromozoa.parser.lexer"] = "dromozoa/parser/lexer.lua";
    ["dromozoa.parser.parser"] = "dromozoa/parser/parser.lua";
    ["dromozoa.parser.regexp"] = "dromozoa/parser/regexp.lua";
    ["dromozoa.parser.regexp.write_graphviz"] = "dromozoa/parser/regexp/write_graphviz.lua";
  };
}
