local plugin_name = "json-threat-protection"
local package_name = "json-threat-protection"
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "msangameshwar"
local github_repo_name = "kong-plugin-json-threat-protection"
local git_checkout = "dev"


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://github.com/msangameshwar/"..github_repo_name,
  license = "Apache 2.0",
}


dependencies = {
   "lua-cjson >= 2.1"
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
