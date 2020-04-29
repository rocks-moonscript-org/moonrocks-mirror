package = "kong-plugin-header-translator"
version = "1.0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-header-translator.git",
  tag = "1.0.1"
}
description = {
  summary = "Translate the contents of a header into another header based on a custom dictionary.",
  homepage = "https://github.com/emartech/kong-plugin-header-translator",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1",
  "kong-lib-logger >= 0.3.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.header-translator.handler"] = "kong/plugins/header-translator/handler.lua",
    ["kong.plugins.header-translator.schema"] = "kong/plugins/header-translator/schema.lua",
    ["kong.plugins.header-translator.daos"] = "kong/plugins/header-translator/daos.lua",
    ["kong.plugins.header-translator.api"] = "kong/plugins/header-translator/api.lua",
    ["kong.plugins.header-translator.normalize_header"] = "kong/plugins/header-translator/normalize_header.lua",
    ["kong.plugins.header-translator.migrations.000_base_header_translator"] = "kong/plugins/header-translator/migrations/000_base_header_translator.lua",
    ["kong.plugins.header-translator.migrations.001_040_to_100"] = "kong/plugins/header-translator/migrations/001_040_to_100.lua",
    ["kong.plugins.header-translator.migrations.002_100_to_101"] = "kong/plugins/header-translator/migrations/002_100_to_101.lua",
    ["kong.plugins.header-translator.migrations.init"] = "kong/plugins/header-translator/migrations/init.lua"
  }
}
