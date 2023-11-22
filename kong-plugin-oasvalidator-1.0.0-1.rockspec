local plugin_name = "oasvalidator"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.0"
local rockspec_revision = "1"

local github_account_name = "nawaz1991"
local github_repo_name = "kong-plugin-oasvalidator"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "A Kong plugin for validating HTTP requests against OpenAPI specifications.",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "MIT",
}


dependencies = {
  "oasvalidator >= 1.0"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
