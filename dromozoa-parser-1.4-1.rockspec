package = "dromozoa-parser"
version = "1.4-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-parser/archive/v1.4.tar.gz";
  file = "dromozoa-parser-1.4.tar.gz";
}
description = {
  summary = "Parser generator toolkit";
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
    ["dromozoa.parser.builder"] = "dromozoa/parser/builder.lua";
    ["dromozoa.parser.driver"] = "dromozoa/parser/driver.lua";
    ["dromozoa.parser.grammar"] = "dromozoa/parser/grammar.lua";
    ["dromozoa.parser.precedence_builder"] = "dromozoa/parser/precedence_builder.lua";
    ["dromozoa.parser.production_builder"] = "dromozoa/parser/production_builder.lua";
    ["dromozoa.parser.regexp"] = "dromozoa/parser/regexp.lua";
    ["dromozoa.parser.regexp_builder"] = "dromozoa/parser/regexp_builder.lua";
    ["dromozoa.parser.regexp_writer"] = "dromozoa/parser/regexp_writer.lua";
    ["dromozoa.parser.scanner"] = "dromozoa/parser/scanner.lua";
    ["dromozoa.parser.scanner_builder"] = "dromozoa/parser/scanner_builder.lua";
    ["dromozoa.parser.writer"] = "dromozoa/parser/writer.lua";
  };
}
