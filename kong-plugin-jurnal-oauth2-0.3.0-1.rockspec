local plugin_name = "jurnal-oauth2"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.3.0"
local rockspec_revision = "1"

local github_account_name = "pras-mieh100"
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
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://bitbucket.org/jurnal/kong-plugin-jurnal-oauth2",
  license = "Apache 2.0",
}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".api"] = "kong/plugins/"..plugin_name.."/api.lua",
  }
}
