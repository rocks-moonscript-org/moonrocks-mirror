rockspec_format = "3.0"
package = "kong-plugin-acp"
version = "1.2.0-1" -- Be sure to update this version in the filename.
source = {
   url = "git+https://github.com/cloudentity/acp-kong-plugin.git",
   tag = "v1.2.0"
}
description = {
   summary = "Integrate the Authorization Control Plan (ACP) with the Kong API Gateway.",
   detailed = [[
      See https://docs.authorization.cloudentity.com/guides/developer/protect/kong/
   ]],
   homepage = "https://github.com/cloudentity/acp-kong-plugin",
   issues_url = "https://github.com/cloudentity/acp-kong-plugin/issues",
   license = "Apache-2.0 License",
}
dependencies = {
   "lua",
   "lua-cjson",
   "lua-resty-http",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.acp.authorize"] = "src/kong/plugins/acp/authorize.lua",
      ["kong.plugins.acp.handler"] = "src/kong/plugins/acp/handler.lua",
      ["kong.plugins.acp.schema"] = "src/kong/plugins/acp/schema.lua"
   }
}
test = {
   type = "busted",
   flags = { "-o", "gtest" },
}
test_dependencies = {
   "lua-cjson",
   "luacheck",
}
