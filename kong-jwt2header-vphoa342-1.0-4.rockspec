package = "kong-jwt2header-vphoa342"
version = "1.0-4"

source = {
  url = "git://github.com/vphoa342/kong-jwt2header",
  tag = "1.0.4"
}

description = {
  summary = "Converts JWT claims to Headers to allow for Routing by JWT Claim and/or upstream JWT Claim consumption by header",
  homepage = "https://github.com/vphoa342/kong-jwt2header",
  license = "MIT",
  detailed = [[
    This Kong Plugin can be used to route requests by JWT claim. It converts JWT claims 
    to headers during rewrite phase for routing purposes.
  ]]
}

dependencies = {
  "lua ~> 5.1",
  "lua-cjson >= 2.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-jwt2header-vphoa342.handler"] = "handler.lua",
    ["kong.plugins.kong-jwt2header-vphoa342.schema"] = "schema.lua"
  }
}