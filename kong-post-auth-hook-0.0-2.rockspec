package = "kong-post-auth-hook"
version = "0.0-2"
source = {
   url = "git://github.com/newtonx-inc/kong-post-auth-hook",
   tag = "v0.0-2"
}
description = {
   summary = "A Kong plugin for performing configurable operations after auth plugins run",
   detailed = [[
       kong-post-auth-hook performs a few customizable operations after auth plugins run, such as adding additional
       useful consumer headers, stripping unwanted auth headers, and performing more fine grained ACL that is not possible
       when using Kong's built in ACL plugin with custom (non Kong) auth plugins (e.g. kong-oidc-google-groups). It is
       designed to be used in conjunction with the `kong-pre-auth-hooks` plugin.
   ]],
   homepage = "https://github.com/newtonx-inc/kong-post-auth-hook",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.post-auth-hook.access"] = "kong/plugins/post-auth-hook/access.lua",
      ["kong.plugins.post-auth-hook.handler"] = "kong/plugins/post-auth-hook/handler.lua",
      ["kong.plugins.post-auth-hook.schema"] = "kong/plugins/post-auth-hook/schema.lua",
      ["kong.plugins.post-auth-hook.utilities"] = "kong/plugins/post-auth-hook/utilities.lua",
   }
}
