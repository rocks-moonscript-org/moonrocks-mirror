package = "kong-plugin-path-replacer"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-path-replacer.git",
  tag = "0.1.0"
}
description = {
  summary = "Replace placeholders in upstream service URLs.",
  homepage = "https://github.com/emartech/kong-plugin-path-replacer",
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
    ["kong.plugins.path-replacer.handler"] = "kong/plugins/path-replacer/handler.lua",
    ["kong.plugins.path-replacer.schema"] = "kong/plugins/path-replacer/schema.lua",
  }
}
