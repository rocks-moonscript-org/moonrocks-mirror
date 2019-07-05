rockspec_format = "3.0"
package = "dromozoa-parser"
version = "1.19-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-parser/archive/v1.19.tar.gz";
  file = "dromozoa-parser-1.19.tar.gz";
}
description = {
  summary = "Parser generator toolkit";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-parser/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-graph";
}
test = {
  type = "command";
  command = "./test.sh";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.parser.builder"] = "dromozoa/parser/builder.lua";
    ["dromozoa.parser.builder.build"] = "dromozoa/parser/builder/build.lua";
    ["dromozoa.parser.builder.lexer"] = "dromozoa/parser/builder/lexer.lua";
    ["dromozoa.parser.builder.pattern"] = "dromozoa/parser/builder/pattern.lua";
    ["dromozoa.parser.builder.precedence"] = "dromozoa/parser/builder/precedence.lua";
    ["dromozoa.parser.builder.production"] = "dromozoa/parser/builder/production.lua";
    ["dromozoa.parser.builder.regexp"] = "dromozoa/parser/builder/regexp.lua";
    ["dromozoa.parser.builder.regexp_lexer"] = "dromozoa/parser/builder/regexp_lexer.lua";
    ["dromozoa.parser.builder.search_lexer"] = "dromozoa/parser/builder/search_lexer.lua";
    ["dromozoa.parser.dump"] = "dromozoa/parser/dump.lua";
    ["dromozoa.parser.error_message"] = "dromozoa/parser/error_message.lua";
    ["dromozoa.parser.grammar"] = "dromozoa/parser/grammar.lua";
    ["dromozoa.parser.grammar.write_conflicts"] = "dromozoa/parser/grammar/write_conflicts.lua";
    ["dromozoa.parser.grammar.write_graph"] = "dromozoa/parser/grammar/write_graph.lua";
    ["dromozoa.parser.grammar.write_productions"] = "dromozoa/parser/grammar/write_productions.lua";
    ["dromozoa.parser.grammar.write_set_of_items"] = "dromozoa/parser/grammar/write_set_of_items.lua";
    ["dromozoa.parser.grammar.write_table"] = "dromozoa/parser/grammar/write_table.lua";
    ["dromozoa.parser.lexer"] = "dromozoa/parser/lexer.lua";
    ["dromozoa.parser.lexer.compile"] = "dromozoa/parser/lexer/compile.lua";
    ["dromozoa.parser.lexer.execute"] = "dromozoa/parser/lexer/execute.lua";
    ["dromozoa.parser.lexer.runtime"] = "dromozoa/parser/lexer/runtime.lua";
    ["dromozoa.parser.parser"] = "dromozoa/parser/parser.lua";
    ["dromozoa.parser.parser.compile"] = "dromozoa/parser/parser/compile.lua";
    ["dromozoa.parser.parser.execute"] = "dromozoa/parser/parser/execute.lua";
    ["dromozoa.parser.parser.runtime"] = "dromozoa/parser/parser/runtime.lua";
    ["dromozoa.parser.reference"] = "dromozoa/parser/reference.lua";
    ["dromozoa.parser.regexp"] = "dromozoa/parser/regexp.lua";
    ["dromozoa.parser.regexp.concat"] = "dromozoa/parser/regexp/concat.lua";
    ["dromozoa.parser.regexp.difference"] = "dromozoa/parser/regexp/difference.lua";
    ["dromozoa.parser.regexp.epsilon_closure"] = "dromozoa/parser/regexp/epsilon_closure.lua";
    ["dromozoa.parser.regexp.merge"] = "dromozoa/parser/regexp/merge.lua";
    ["dromozoa.parser.regexp.minimize"] = "dromozoa/parser/regexp/minimize.lua";
    ["dromozoa.parser.regexp.nfa_to_dfa"] = "dromozoa/parser/regexp/nfa_to_dfa.lua";
    ["dromozoa.parser.regexp.remove_unreachable_states"] = "dromozoa/parser/regexp/remove_unreachable_states.lua";
    ["dromozoa.parser.regexp.to_graph"] = "dromozoa/parser/regexp/to_graph.lua";
    ["dromozoa.parser.regexp.tree_to_nfa"] = "dromozoa/parser/regexp/tree_to_nfa.lua";
    ["dromozoa.parser.regexp.union"] = "dromozoa/parser/regexp/union.lua";
    ["dromozoa.parser.regexp.write_graph"] = "dromozoa/parser/regexp/write_graph.lua";
    ["dromozoa.parser.regexp_lexer"] = "dromozoa/parser/regexp_lexer.lua";
    ["dromozoa.parser.regexp_parser"] = "dromozoa/parser/regexp_parser.lua";
    ["dromozoa.parser.symbol_value"] = "dromozoa/parser/symbol_value.lua";
  };
  install = {
    bin = {
      ["dromozoa-parser-regexp"] = "dromozoa-parser-regexp";
    };
  };
}
