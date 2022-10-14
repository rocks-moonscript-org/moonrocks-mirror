local plugin_name = "google-recaptcha"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "EUROPCAR-MOBILITY-GROUP-API"
local github_repo_name = "kong-plugin-google-recaptcha"
local git_checkout = package_version == "dev" and "main" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}

description = {
  summary = "kong google recaptcha plugin help validate the recaptcha on kong routes",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
  license = "Apache 2.0",
}


dependencies = {
    "lua >= 5.1",
    "luasec",
    "luasocket",
    "lua-cjson",
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
