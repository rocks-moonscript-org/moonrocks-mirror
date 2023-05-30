package = "kong-mocking-advanced"

version = "1.0.0-1"

supported_platforms = {"linux"}

source = {
  url = "git+https://github.com/Platformatory/kong-mocking-advanced.git",
  tag = "main"
}

description = {
  summary = "OpenAPI driven response mocking & faking",
  license = "MIT",
  maintainer = "Pavan Keshavamurthy <pavan@platformatory.com>"
}

dependencies = {
  "faker = 0.0.1-1",
--  "lyaml = 6.2.8-1",
  "aspect = 2.3-0",
  "lua-resty-ljsonschema = 1.1.3-1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-mocking-advanced.oas3-utils"] = "kong/plugins/kong-mocking-advanced/oas3-utils.lua",
    ["kong.plugins.kong-mocking-advanced.faker-exts"] = "kong/plugins/kong-mocking-advanced/faker-exts.lua",
    ["kong.plugins.kong-mocking-advanced.handler"] = "kong/plugins/kong-mocking-advanced/handler.lua",
    ["kong.plugins.kong-mocking-advanced.schema"] = "kong/plugins/kong-mocking-advanced/schema.lua",
  }
}
