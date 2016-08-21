package = "kong-plugin-jwt-up"
version = "1.6-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Trust1Team/kong-plugin-jwt-up",
  tag = "1.6.0"
}
description = {
  summary = "The Kong JWT-Upstream plugin.",
  license = "MIT",
  homepage = "http://www.trust1team.com",
  detailed = [[
      The JWT upstream plugin composes an JWT that will be sent implicitly to
      all upstream APIs in the Authorization header (Bearer token).
      The consumers must have JWT credentials, and must be identified
      towards the API in order for the plugin to generate the token. The JWT-up does not work
      in combination with the default JWT policy. The generated tokens uses algorithm RS256
      when proxying the request to an upstream API.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-up.handler"] = "src/handler.lua",
    ["kong.plugins.jwt-up.schema"] = "src/schema.lua",
    ["kong.plugins.jwt-up.jwt_parser"] = "src/jwt_parser.lua",
    ["kong.plugins.jwt-up.fixtures"] = "src/fixtures.lua"
  }
}