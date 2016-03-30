package = "external-oid"
version = "1.0-3"
source = {
    url = "https://github.com/lomori/external-oid/blob/master/external-oid-1.0-3.tar.gz?raw=true"
 }

description = {
  summary = "External OID plugin for Kong.",
  license = "MIT/X11"
}
dependencies = {
  "lua ~> 5.1"
  -- If you depend on other rocks, add them here
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.external-oid.api"] = "external-oid/api.lua",
    ["kong.plugins.external-oid.daos"] = "external-oid/daos.lua",
    ["kong.plugins.external-oid.handler"] = "external-oid/handler.lua",
    ["kong.plugins.external-oid.schema.migrations"] = "external-oid/schema/migrations.lua",
    ["kong.plugins.external-oid.schema"] = "external-oid/schema.lua",
    ["kong.plugins.external-oid.hooks"] = "external-oid/hooks.lua"
  }
}
