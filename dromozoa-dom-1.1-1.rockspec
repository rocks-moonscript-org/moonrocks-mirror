package = "dromozoa-dom"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-dom/archive/v1.1.tar.gz";
  file = "dromozoa-dom-1.1.tar.gz";
}
description = {
  summary = "DOM DSL and serialization";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-dom/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-utf8";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.dom.check_name"] = "dromozoa/dom/check_name.lua";
    ["dromozoa.dom.document"] = "dromozoa/dom/document.lua";
    ["dromozoa.dom.element"] = "dromozoa/dom/element.lua";
    ["dromozoa.dom.html5_document"] = "dromozoa/dom/html5_document.lua";
    ["dromozoa.dom.is_name_char"] = "dromozoa/dom/is_name_char.lua";
    ["dromozoa.dom.is_name_start_char"] = "dromozoa/dom/is_name_start_char.lua";
    ["dromozoa.dom.serialize_html5"] = "dromozoa/dom/serialize_html5.lua";
    ["dromozoa.dom.serialize_xml"] = "dromozoa/dom/serialize_xml.lua";
    ["dromozoa.dom.xml_document"] = "dromozoa/dom/xml_document.lua";
  };
}
