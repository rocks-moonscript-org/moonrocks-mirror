local plugin_name = "cscapisec"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "cybersecuritycloud"
local github_repo_name = "kong-cscapisec"
--local git_checkout = package_version == "dev" and "master" or package_version

-- local private = true


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  -- tag = "v1.0",
  branch = "master"
  -- branch = git_checkout,
}

-- if private then
--     local env require('env')
--     local github_username = env.get('GITHUB_USER')
--     local github_token = env.get('GITHUB_TOKEN')
--     source = {
--         url = "git+https://"..github_username..":"..github_token.."@github.com/"..github_account_name.."/"..github_repo_name..".git",
--         branch = git_checkout,
--       }
-- end


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
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["csclimit"] = "csclimit.lua",
    ["cscmatch"] = "cscmatch.lua",
    ["csctype"] = "csctype.lua",
    ["datastore"] = "datastore.lua",
    ["detector"] = "detector.lua",
    ["util"] = "util.lua"
  }
}
