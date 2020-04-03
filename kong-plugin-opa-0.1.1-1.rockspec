rockspec_format = "3.0"
package = "kong-plugin-opa"
version = "0.1.1-1"
source = {
   url = "git+https://github.com/wada-ama/kong-plugins.git",
   tag = "v0.1.1",
}
description = {
   summary = "Integrate the Open Policy Agent (OPA) for API access management with Kong API Gateway",
   detailed = [[
      This plugin will call OPA on every request from a client to 
      validate if the user has access or not to the requested upstream service.
   ]],
   homepage = "https://github.com/wada-ama/kong-plugins",
   issues_url = "https://github.com/wada-ama/kong-plugins/issues",
}
dependencies = {
   "lua-cjson",
   "lua-resty-http",
   "lua-resty-jwt",
}
test_dependencies = {
   "luacov",
   "luacheck",
}
test = {
   type = "busted",
   flags = { "-o", "gtest" },
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.opa.access"] = "src/kong/plugins/opa/access.lua",
      ["kong.plugins.opa.handler"] = "src/kong/plugins/opa/handler.lua",
      ["kong.plugins.opa.schema"] = "src/kong/plugins/opa/schema.lua",
   },
}