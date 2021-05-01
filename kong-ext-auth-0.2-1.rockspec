package = "kong-ext-auth"
version = "0.2-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/samnela/kong-ext-auth",
  tag = "poc-jwt-token"
}
description = {
  summary = "Test Kong plugin to authenticate requests using external http services.",
  license = "MIT",
  homepage = "https://github.com/samnela/kong-ext-auth",
  detailed = [[
      Kong plugin to authenticate requests using http services.
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