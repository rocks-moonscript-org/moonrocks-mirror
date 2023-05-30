package = "kong-plugin-opa2"
version = "0.1.1-2"
source = {
   url = "git+https://github.com/jeremyjpj0916/kong-plugin-opa.git"
}

description = {
   summary = "Integrate the Open Policy Agent (OPA) with Kong API Gateway for API access management",
   detailed = [[
      see https://github.com/open-policy-agent/contrib/tree/master/kong_plugin_opa for more information
   ]],
   homepage = "https://github.com/open-policy-agent/contrib/tree/master/kong_plugin_opa",
   license = "Apache 2.0"
}
dependencies = {
   "lua-cjson",
   "lua-resty-http",
   "lua-resty-jwt"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.opa.access"] = "src/kong/plugins/opa/access.lua",
      ["kong.plugins.opa.handler"] = "src/kong/plugins/opa/handler.lua",
      ["kong.plugins.opa.schema"] = "src/kong/plugins/opa/schema.lua"
   }
}
