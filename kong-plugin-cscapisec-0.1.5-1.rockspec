local plugin_name = "cscapisec"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.5"
local rockspec_revision = "1"

local github_account_name = "cybersecuritycloud"
local github_repo_name = "kong-cscapisec"
--local git_checkout = package_version == "dev" and "master" or package_version

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = "master",
  -- dir = "module"
  -- tag = "v1.0"
  -- branch = git_checkout,
}


description = {
  summary = "Kong Plugin for API Security. Developed by CyberSecurityCloud",
  detailed = [[
    This is development LuaRocks package.
  ]],
  -- homepage = "https:///www.cscloud.co.jp/",
  license = "Apache 2.0",
}


dependencies = {
    "lua >= 5.1, < 5.4"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "module/kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "module/kong/plugins/"..plugin_name.."/schema.lua",
    csclimit = "module/csclimit.lua",
    cscmatch = "module/cscmatch.lua",
    csctype = "module/csctype.lua",
    datastore = "module/datastore.lua",
    detector = "module/detector.lua",
    util = "module/util.lua"
  }
}
