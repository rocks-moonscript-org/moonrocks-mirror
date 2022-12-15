local plugin_name = "rate-limiting-quotas"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.1"
local rockspec_revision = "1"

local github_account_name = "wendeldavid"
local github_repo_name = "kong-plugin-"..plugin_name
local git_checkout = package_version == "dev" and "main" or package_version


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
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".daos"] = "kong/plugins/"..plugin_name.."/daos.lua",
    ["kong.plugins."..plugin_name..".expiration"] = "kong/plugins/"..plugin_name.."/expiration.lua",
    ["kong.plugins."..plugin_name..".migrations.init"] = "kong/plugins/"..plugin_name.."/migrations/init.lua",
    ["kong.plugins."..plugin_name..".migrations.000_base_rate_limiting_quotas"] = "kong/plugins/"..plugin_name.."/migrations/000_base_rate_limiting_quotas.lua",
    ["kong.plugins."..plugin_name..".migrations.003_10_to_112"] = "kong/plugins/"..plugin_name.."/migrations/003_10_to_112.lua",
    ["kong.plugins."..plugin_name..".migrations.004_200_to_210"] = "kong/plugins/"..plugin_name.."/migrations/004_200_to_210.lua",
    ["kong.plugins."..plugin_name..".policies.cluster"] = "kong/plugins/"..plugin_name.."/policies/cluster.lua",
    ["kong.plugins."..plugin_name..".policies.init"] = "kong/plugins/"..plugin_name.."/policies/init.lua",
  }
}
