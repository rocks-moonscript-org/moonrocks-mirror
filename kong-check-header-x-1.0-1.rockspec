local plugin_name = "kong-check-header-x"
local package_name = plugin_name
local package_version = "1.0"
local rockspec_revision = "1"

local github_account_name = "Kong"
local github_repo_name = "kong-plugin"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "https://github.com/jaikratsinghtariyal/kong-plugin.git",
  branch = "master",
}


description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  license = "Apache 2.0",
}


dependencies = {
  "lua ~> 5.1"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-check-header-x.handler"] = "kong/plugin/handler.lua",
    ["kong.plugins.kong-check-header-x.schema"] = "kong/plugin/schema.lua",
  }
}
