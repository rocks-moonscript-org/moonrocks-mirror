local plugin_name = "response-cache"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.0"
local rockspec_revision = "1"
local github_account_name = "allbarbos"
local github_repo_name = "kong-response-cache"
local git_checkout = package_version == "dev" and "master" or package_version

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = {
  "linux",
  "macosx"
}

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}

description = {
  summary = "This plugin provides a reverse proxy cache implementation for Kong.",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "Apache 2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"]           = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"]            = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".cache"]             = "kong/plugins/"..plugin_name.."/cache.lua",
    ["kong.plugins."..plugin_name..".strategies"]        = "kong/plugins/"..plugin_name.."/strategies/init.lua",
    ["kong.plugins."..plugin_name..".strategies.memory"] = "kong/plugins/"..plugin_name.."/strategies/memory.lua",
    ["kong.plugins."..plugin_name..".strategies.redis"]  = "kong/plugins/"..plugin_name.."/strategies/redis.lua",
    ["kong.plugins."..plugin_name..".http.header"]       = "kong/plugins/"..plugin_name.."/http/header.lua",
    ["kong.plugins."..plugin_name..".http.request"]      = "kong/plugins/"..plugin_name.."/http/request.lua",
    ["kong.plugins."..plugin_name..".http.response"]     = "kong/plugins/"..plugin_name.."/http/response.lua",
  }
}
