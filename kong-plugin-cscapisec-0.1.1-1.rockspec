local plugin_name = "cscapisec"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.1"
local rockspec_revision = "1"

local github_account_name = "cybersecuritycloud"
local github_repo_name = "kong-cscapisec"
--local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  -- tag = "v1.0",
  branch = "master"
  -- branch = git_checkout,
}


description = {
  summary = "Kong Plugin for API Security. Developed by CyberSecurityCloud",
  detailed = [[
    This is development LuaRocks package.
  ]],
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "Apache 2.0",
}


dependencies = {
    "lua >= 5.1, < 5.4"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["csclimit"] = "csclimit.lua",
    ["cscmatch"] = "cscmatch.lua",
    ["csctype"] = "csctype.lua",
    ["datastore"] = "datastore.lua",
    ["util"] = "util.lua"
  }
}
