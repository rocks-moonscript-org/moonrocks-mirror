package = "kong-request-intercept"
version = "0.1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/GreatWriter/kong-request-intercept",
}
description = {
  summary = "Kong plugin to authenticate requests using http services.",
  license = "Apache 2.0",
  homepage = "https://github.com/GreatWriter/kong-request-intercept",
  detailed = [[
      Kong plugin to authenticate requests using http services.
  ]]
}
dependencies = {
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-request-intercept.handler"] = "src/handler.lua",
    ["kong.plugins.kong-request-intercept.schema"] = "src/schema.lua"
  }
}