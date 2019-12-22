package = "kong-opa"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/ninjaneers-team/kong-opa",
  tag = "v1.2"
}

description = {
  summary = "OPA Plugin",
  license = "Apache 2.0",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.opa.handler"] = "src/handler.lua",
    ["kong.plugins.opa.schema"] = "src/schema.lua"
  }
}
