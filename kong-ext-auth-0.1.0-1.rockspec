package = "kong-ext-auth"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/be-humble/kong-ext-auth",
  tag = "main"
}
description = {
  summary = "Kong plugin to authenticate requests using external http services.",
  license = "MIT",
  homepage = "https://github.com/be-humble/kong-ext-auth",
  detailed = [[
      Kong plugin to authenticate requests using external http services.
  ]]
}
dependencies = {
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-ext-auth.handler"] = "src/handler.lua",
    ["kong.plugins.kong-ext-auth.schema"] = "src/schema.lua"
  }
}