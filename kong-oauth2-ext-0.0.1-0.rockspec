package = "kong-oauth2-ext"
version = "0.0.1-0"
supported_platforms = {"linux", "macosx"}
source = {
	url = "git:github.com/shevaha201/kong-plugin"
}
description = {
  summary = "Kong oauth2 ext",
  license = "Apache 2.0"
}
dependencies = { }
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.oauth2extensions.api"] = "kong/plugins/oauth2extensions/api.lua"
  }
}
