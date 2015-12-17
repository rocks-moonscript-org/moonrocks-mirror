package = "dromozoa-xml"
version = "1.2-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-xml/archive/v1.2.tar.gz";
  file = "dromozoa-xml-1.2.tar.gz";
}
description = {
  summary = "XML parser and toolkit";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-xml/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.xml"] = "dromozoa/xml.lua";
    ["dromozoa.xml.parser"] = "dromozoa/xml/parser.lua";
    ["dromozoa.xml.element"] = "dromozoa/xml/element.lua";
    ["dromozoa.xml.selection"] = "dromozoa/xml/selection.lua";
    ["dromozoa.xml.selector"] = "dromozoa/xml/selector.lua";
    ["dromozoa.xml.selector_generator"] = "dromozoa/xml/selector_generator.lua";
    ["dromozoa.xml.selector_parser"] = "dromozoa/xml/selector_parser.lua";
  };
}
