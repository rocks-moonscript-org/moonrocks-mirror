rockspec_format = "3.0"
package = "dromozoa-compiler"
version = "1.0-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-compiler/archive/v1.0.tar.gz";
  file = "dromozoa-compiler-1.0.tar.gz";
}
description = {
  summary = "Lua compiler toolkit";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-compiler/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-dom";
  "dromozoa-graph";
  "dromozoa-parser";
  "dromozoa-vecmath";
}
test = {
  type = "command";
  command = "./test.sh";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.compiler.lua53_lexer"] = "dromozoa/compiler/lua53_lexer.lua";
    ["dromozoa.compiler.lua53_parser"] = "dromozoa/compiler/lua53_parser.lua";
    ["dromozoa.compiler.runtime.runtime_es"] = "dromozoa/compiler/runtime/runtime_es.lua";
    ["dromozoa.compiler.syntax_tree"] = "dromozoa/compiler/syntax_tree.lua";
    ["dromozoa.compiler.syntax_tree.analyze"] = "dromozoa/compiler/syntax_tree/analyze.lua";
    ["dromozoa.compiler.syntax_tree.code_builder"] = "dromozoa/compiler/syntax_tree/code_builder.lua";
    ["dromozoa.compiler.syntax_tree.compile_es"] = "dromozoa/compiler/syntax_tree/compile_es.lua";
    ["dromozoa.compiler.syntax_tree.dump_protos"] = "dromozoa/compiler/syntax_tree/dump_protos.lua";
    ["dromozoa.compiler.syntax_tree.dump_tree"] = "dromozoa/compiler/syntax_tree/dump_tree.lua";
    ["dromozoa.compiler.syntax_tree.generate"] = "dromozoa/compiler/syntax_tree/generate.lua";
  };
}
