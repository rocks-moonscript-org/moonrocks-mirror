package = "tmg-cookie-auth-shim"
version = "1.0.1-2"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/GIA/tmg-cookie-auth-shim.git"
}
description = {
   summary = "TMG Cookie Auth Shim",
   detailed = "Kong plugin to replicate the main usages of CookieAuth.dll, a TMG component that provides UI & API authentication services."
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.tmg-cookie-auth-shim.access"] = "access.lua",
      ["kong.plugins.tmg-cookie-auth-shim.handler"] = "handler.lua",
      ["kong.plugins.tmg-cookie-auth-shim.schema"] = "schema.lua"
   }
}
