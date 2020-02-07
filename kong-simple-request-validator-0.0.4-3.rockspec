package = "kong-simple-request-validator"
version = "0.0.4-3"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/brightwang/kong-simple-request-validator.git",
  tag = "0.0.4-3"
}
description = {
  summary = "Kong Plugin for Request Validator",
  license = "MIT License",
  homepage = "https://github.com/brightwang/kong-simple-request-validator"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-validation >= 2.7-1",
  "jsonschema >= 0.5-0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-simple-request-validator.handler"] = "src/handler.lua",
    ["kong.plugins.kong-simple-request-validator.schema"] = "src/schema.lua",
    ["kong.plugins.kong-simple-request-validator.access"] = "src/access.lua",
  }
}
