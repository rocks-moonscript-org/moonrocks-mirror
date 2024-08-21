local plugin_name = "inigo"
local package_name = "inigo-kong-plugin"
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "inigolabs"
local github_repo_name = "inigo-kong"
local git_checkout = "main"


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "Inigo Kong Plugin",
  homepage = "https://www.inigo.io",
  license = "Apache 2.0",
}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
