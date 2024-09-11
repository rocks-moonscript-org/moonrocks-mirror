local plugin_name = "api-gateway-jurnal"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.1"
local rockspec_revision = "1"

local github_account_name = "alamtopani"
local github_repo_name = "kong-plugin-" .. plugin_name
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://"..github_account_name.."@bitbucket.org/jurnal/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "This plugin is used to inject access token to header for each request to the upstream service",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "Apache 2.0",
}

dependencies = {
  "lua-cjson >= 2.1.0.10-1"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
