rockspec_format = "3.0"
local plugin_name = "uoa-soap-to-rest"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.0"
local rockspec_revision = "3"


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+ssh://git@bitbucket.org/uoa/soap-to-rest.git",
  branch = "master",
}


description = {
  summary = "Kong plugin to convert incoming SOAP/XML requests to the UoA expected REST/JSON format",
  homepage = "https://bitbucket.org/uoa/soap-to-rest",
  license = "Apache 2.0",
}


dependencies = {
 "xml2lua = 1.5-2",
 "lua-cjson = 2.1.0.10-1",
 "lua-zlib = 1.2-2"
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins.uoa-soap-to-rest.handler"] = "kong/plugins/uoa-soap-to-rest/handler.lua",
    ["kong.plugins.uoa-soap-to-rest.schema"] = "kong/plugins/uoa-soap-to-rest/schema.lua",
    ["kong.plugins.uoa-soap-to-rest.mime_type"] = "kong/plugins/uoa-soap-to-rest/mime_type.lua",
    ["kong.plugins.uoa-soap-to-rest.request_transformer"] = "kong/plugins/uoa-soap-to-rest/request_transformer.lua",
    ["kong.plugins.uoa-soap-to-rest.response_transformer"] = "kong/plugins/uoa-soap-to-rest/response_transformer.lua",
  }
}
