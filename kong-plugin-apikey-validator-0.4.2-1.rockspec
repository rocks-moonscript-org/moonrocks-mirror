local plugin_name = "apikey-validator"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.4.2"
local rockspec_revision = "1"

local github_account_name = "fenix-hub"
local github_repo_name = "kong-apikey-validator"
local git_checkout = "master"


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "Apache 2.0",
}


dependencies = {
    "lua >= 5.1",
    "lunajson >= 1.2.3-1",
    "redis-lua >= 2.0.4-1",
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".api"] = "kong/plugins/"..plugin_name.."/api.lua",
    ["kong.plugins."..plugin_name..".switch"] = "kong/plugins/"..plugin_name.."/switch.lua",
    ["kong.plugins."..plugin_name..".rate-limiting"] = "kong/plugins/"..plugin_name.."/rate-limiting.lua",
  }
}
