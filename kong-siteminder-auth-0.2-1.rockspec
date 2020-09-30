package = "kong-siteminder-auth"
version = "0.2-1"
source = {
   url = "git+https://github.com/Optum/kong-siteminder-auth.git"
}
description = {
   summary = "Siteminder authentication integration with the Kong Gateway",
   detailed = [[
    The Kong Siteminder Auth is a small, lua-based, OpenResty Nginx module which validates the Siteminder tokens passed in Kong's proxy requests.
    The purpose of this plugin is to call the Siteminder URL and validate if the token is valid.
   ]],
   homepage = "https://github.com/Optum/kong-siteminder-auth",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-siteminder-auth.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-siteminder-auth.schema"]= "src/schema.lua"
   }
}
