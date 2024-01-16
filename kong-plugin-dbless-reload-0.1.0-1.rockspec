local plugin_name = "dbless-reload"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "Tieske"
local github_repo_name = "kong-plugin-" .. plugin_name
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "A development plugin to auto-reload Kong when files (dbless config, or plugins) change",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "Apache 2.0",
}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins.dbless-reload.handler"] = "kong/plugins/dbless-reload/handler.lua",
    ["kong.plugins.dbless-reload.schema"] = "kong/plugins/dbless-reload/schema.lua",
    ["kong.plugins.dbless-reload.timer"] = "kong/plugins/dbless-reload/timer.lua",
  }
}
