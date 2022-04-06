local plugin_name = "request-response-logging"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.1"
local rockspec_revision = "1"

local github_account_name = "shubhamPassi"
local github_account_password = "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"
local github_repo_name = "kong-plugin-request-response-logging"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "https://"..github_account_name..":"..github_account_password.."@github.com/"..github_account_name.."/"..github_repo_name..".git",
  -- url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
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
  }
}
