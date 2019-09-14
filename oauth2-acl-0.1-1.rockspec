package = "oauth2-acl"
version = "0.1-1"
source = {
   url = "git://github.com/vrubenjn/oauth2-acl"
}
description = {
   summary = "Kong Plugin for scopes based ACLs.",
   detailed = [[
It allows to use oauth2 scopes to restrict acces to routes or services in kong. 
Use it in conjuntion with official oauth2 plugin.

It's based on oficials Kong's ACL plugin.
   ]],
   homepage = "https://github.com/vrubenjn/oauth2-acl",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.oauth2-acl.handler"] = "kong/plugins/oauth2-acl/handler.lua",
      ["kong.plugins.oauth2-acl.schema"] = "kong/plugins/oauth2-acl/schema.lua"
   }
}
