package = "kong-request-jwt-header"
version = "1.0-1"
source = {
   url = "git+ssh://git@github.com/Liberxue/kong-request-jwt-header.git",
   tag = "v1.0-1",
   branch = "master"
}
description = {
   summary = "",
   detailed = "",
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}

dependencies = {
  "lua ~> 5.1",
  "inspect ~> 3.1.0",
  "lua-resty-jwt ~> 0.1.10-1"
}

build = {
   type = "builtin",
   modules = {
      handler = "src/handler.lua",
      schema = "src/schema.lua"
   }
}
