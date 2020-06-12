package = "kong-spec-expose"
version = "1.1-1"
source = {
   url = "git+https://github.com/Optum/kong-spec-expose.git"
}
description = {
   summary = "Plugin to expose the specification/contract of auth protected API services fronted by the Kong gateway",
   detailed = [[
   This plugin will expose the specification of auth protected API services fronted by the Kong gateway.

   In short, API Providers need a means of exposing the specification of their services while maintaining authentication on the service itself, we do so by:

    1. Plugin enables Kong users to specify the endpoint of their API specification.
    2. Plugin will validate the Proxy request is GET method, and will validate the proxy request ends with "/specz". If these two requirements are met, the endpoint will return the specification documentation of the API Service with Content-Type header identical to what the API Service exposes.
   ]],
   homepage = "https://github.com/Optum/kong-spec-expose",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-spec-expose.access"] = "src/access.lua",
      ["kong.plugins.kong-spec-expose.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-spec-expose.schema"]= "src/schema.lua"
   }
}
