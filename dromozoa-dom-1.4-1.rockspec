package = "dromozoa-dom"
version = "1.4-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-dom/archive/v1.4.tar.gz";
  file = "dromozoa-dom-1.4.tar.gz";
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
    ["dromozoa.css.color4b"] = "dromozoa/css/color4b.lua";
    ["dromozoa.css.color4d"] = "dromozoa/css/color4d.lua";
    ["dromozoa.css.colors"] = "dromozoa/css/colors.lua";
    ["dromozoa.dom.check_name"] = "dromozoa/dom/check_name.lua";
    ["dromozoa.dom.comma_separated"] = "dromozoa/dom/comma_separated.lua";
    ["dromozoa.dom.document"] = "dromozoa/dom/document.lua";
    ["dromozoa.dom.element"] = "dromozoa/dom/element.lua";
    ["dromozoa.dom.html5_document"] = "dromozoa/dom/html5_document.lua";
    ["dromozoa.dom.is_name_char"] = "dromozoa/dom/is_name_char.lua";
    ["dromozoa.dom.is_name_start_char"] = "dromozoa/dom/is_name_start_char.lua";
    ["dromozoa.dom.serialize_html5"] = "dromozoa/dom/serialize_html5.lua";
    ["dromozoa.dom.serialize_separated"] = "dromozoa/dom/serialize_separated.lua";
    ["dromozoa.dom.serialize_xml"] = "dromozoa/dom/serialize_xml.lua";
    ["dromozoa.dom.space_separated"] = "dromozoa/dom/space_separated.lua";
    ["dromozoa.dom.xml_document"] = "dromozoa/dom/xml_document.lua";
    ["dromozoa.svg.path_data"] = "dromozoa/svg/path_data.lua";
  };
}
