package = "kong-plugin-json-threat-protection"
version = "1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Trust1Team/kong-plugin-json-threat-protection",
  tag = "1.0.1"
}
description = {
  summary = "The Kong JSON Threat Protection plugin.",
  license = "MIT",
  homepage = "http://www.trust1team.com",
  detailed = [[
  	Like XML-based services, APIs that support JavaScript object notation (JSON) are vulnerable to content-level attacks.
  	Simple JSON attacks attempt to use structures that overwhelm JSON parsers to crash a service and induce application-level denial-of-service attacks.
  	All settings are optional and should be tuned to optimize your service requirements against potential vulnerabilities.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.json-threat-protection.handler"] = "src/handler.lua",
    ["kong.plugins.json-threat-protection.schema"] = "src/schema.lua",
    ["kong.plugins.json-threat-protection.json_validator"] = "src/json_validator.lua"
  }
}