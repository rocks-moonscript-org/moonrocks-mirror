local plugin_name = "file-log-advanced"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "3.1.0"
local rockspec_revision = "2"

local github_account_name = "gogomarine"
local github_repo_name = "kong-plugin-file-log-advanced"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "For Jiandaoyun Push Event signature validation.",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "Apache 2.0",
}


dependencies = {
  "lua ~> 5.1"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".serializer"] = "kong/plugins/"..plugin_name.."/serializer.lua",
  }
}
