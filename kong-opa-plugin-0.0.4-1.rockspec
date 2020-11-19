rockspec_format = "3.0"
package = "kong-opa-plugin"
version = "0.0.4-1"
source = {
   url = "git+https://github.com/jtbonhomme/kong-plugin-opa.git",
   tag = "v0.0.4",
}
description = {
   summary = "Integrate the Open Policy Agent (OPA) with Kong API Gateway for API access management, fork of opa contrib plugin",
   detailed = [[
      see https://github.com/jtbonhomme/kong-plugin-opa/tree/master/kong_plugin_opa for more information
   ]],
   homepage = "https://github.com/jtbonhomme/kong-plugin-opa/tree/master/kong_plugin_opa",
   issues_url = "https://github.com/jtbonhomme/kong-plugin-opa/issues",
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