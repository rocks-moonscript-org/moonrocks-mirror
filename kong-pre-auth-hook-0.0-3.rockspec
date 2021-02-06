package = "kong-pre-auth-hook"
version = "0.0-3"
source = {
   url = "git://github.com/newtonx-inc/kong-pre-auth-hook",
   tag = "v0.0-3"
}
description = {
   summary = "A Kong plugin for performing configurable operations before auth plugins run",
   detailed = [[
       kong-pre-auth-hook performs a few customizable operations before auth plugins run, such as stripping auth headers
       that can be spoofed by requesters, and allowing for more finer grained control of whether auth plugins should run
       or not based on the request.

   ]],
   homepage = "https://github.com/newtonx-inc/kong-pre-auth-hook",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.pre-auth-hook.filters"] = "kong/plugins/pre-auth-hook/filters.lua",
      ["kong.plugins.pre-auth-hook.access"] = "kong/plugins/pre-auth-hook/access.lua",
      ["kong.plugins.pre-auth-hook.handler"] = "kong/plugins/pre-auth-hook/handler.lua",
      ["kong.plugins.pre-auth-hook.schema"] = "kong/plugins/pre-auth-hook/schema.lua",
      ["kong.plugins.pre-auth-hook.utilities"] = "kong/plugins/pre-auth-hook/utilities.lua",
   }
}
