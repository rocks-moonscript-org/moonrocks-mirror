package = "kong-plugin-soap4kong-generator"

version = "0.1.2-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "soap4kong-generator"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/MadeByMakers/kong-plugin-soap4kong",
  tag = "0.1.2"
}

description = {
  summary = "A plugin for the Kong Microservice API Gateway to convert a REST API request to a SOAP request and convert the SOAP Response to json",
  homepage = "https://madebymakers.github.io/kong-plugin-soap4kong/",
  license = "Apache 2.0"
}

dependencies = {
  "lua-cjson >= 2.1.0.6-1",
  "xml2lua >= 1.5-2",
  "lua-resty-template >= 2.0-1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".generator"] = "kong/plugins/"..pluginName.."/generator.lua",
    ["kong.plugins."..pluginName..".validator"] = "kong/plugins/"..pluginName.."/validator.lua",
    ["kong.plugins."..pluginName..".fileUtil"] = "kong/plugins/"..pluginName.."/fileUtil.lua",
    ["kong.plugins."..pluginName..".wsdl"] = "kong/plugins/"..pluginName.."/wsdl.lua",
    ["kong.plugins."..pluginName..".xsd2xml"] = "kong/plugins/"..pluginName.."/xsd2xml.lua"
  }
}
