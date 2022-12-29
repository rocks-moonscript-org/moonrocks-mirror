local plugin_name = "subdomain-as-header"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "theundeadmonk"
local github_repo_name = "subdomain-as-header"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  tag = "v0.1.0",
}


description = {
  summary = "This is a Kong Plugin that extracts the subdomain from a url and sets it as a header.",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "MIT",
}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
